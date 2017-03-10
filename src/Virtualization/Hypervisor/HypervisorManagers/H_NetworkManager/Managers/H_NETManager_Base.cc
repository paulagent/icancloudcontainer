//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

#include "H_NETManager_Base.h"


H_NETManager_Base::~H_NETManager_Base() {

    pendingConnections.clear();
    vms.clear();

    overheadStructure.clear();

}

void H_NETManager_Base::initialize() {

	icancloud_Base::initialize();

	std::ostringstream osStream;

	// Initialize
    nodeGate = 0;
    connectionTimeout = 0;
    pendingConnections.clear();

    fromVMNet = NULL;
    toVMNet = NULL;

    toNodeNet = NULL;
    fromNodeNet = NULL;

    fromHStorageManager = NULL;
    toHStorageManager = NULL;

    storageApp_ModuleIndex = -1;

    localNetManager = NULL;


	// Get module parameters
		connectionTimeout = par("connectionTimeOut");
		pendingConnections.clear();

		// Init the gates IDs to/from Vms
		toVMNet = new cGateManager(this);
        fromVMNet = new cGateManager(this);

        // Init the id from the node at position 0
        nodeGate = 0;
        toVMNet->linkGate("toVMNet", nodeGate);
        fromVMNet->linkGate("fromVMNet",nodeGate);

        vms.clear();

		toNodeNet = gate ("toNodeNet");
		fromNodeNet = gate ("fromNodeNet");

		fromHStorageManager = gate ("fromHStorageManager");
		toHStorageManager = gate ("toHStorageManager");

		storageApp_ModuleIndex = par("storageApp_ModuleIndex");

		overheadStructure.clear();
        net_overhead = par("networkOverhead");

        cMessage *initScheduler = new cMessage (SM_WAIT_TO_SCHEDULER.c_str());
        scheduleAt (simTime(), initScheduler);
}

void H_NETManager_Base::finish(){
	icancloud_Base::finish();
}

cGate* H_NETManager_Base::getOutGate (cMessage *msg){

	cGate* gateResult = NULL;

		// If msg arrive from VM
		if (msg->arrivedOn("fromVMNet"))
            return (gate("toVMNet", msg->getArrivalGate()->getIndex()));

		// If msg arrive from NODE
		else if (msg->arrivedOn("fromNodeNet"))
		    gateResult = (gate("toNodeNet"));


		// If msg arrive from Block server Manager
		else if (msg->arrivedOn("fromHStorageManager"))
		    gateResult =  (gate("toHStorageManager"));


		return gateResult;
}

void H_NETManager_Base::processSelfMessage (cMessage *msg){

	cModule* mod;
	string nodeIP;
    RoutingTable* rTable;

	if (!strcmp (msg->getName(), SM_WAIT_TO_SCHEDULER.c_str())){

		// get the ip of the node
		rTable = dynamic_cast <RoutingTable*> (getParentModule()->getParentModule()->getParentModule()->getSubmodule("routingTable"));

		ipNode = rTable->getRouterId().str();
		if (strcmp(ipNode.c_str(), "<unspec>") == 0){
		    ipNode = "0.0.0.0";
		}
		// set the local net manager
		mod = getParentModule()->getSubmodule ("localNetManager");
		localNetManager = dynamic_cast <LocalNetManager*>  (mod);

		if (localNetManager == NULL) throw cRuntimeError("Can not cast the local net manager\n");

		localNetManager->initializePAT(ipNode);

	    cancelAndDelete (msg);

	} else if (!strcmp (msg->getName(), SM_APP_ALARM.c_str())){

		checkPendingMessages();
	    cancelAndDelete (msg);

	} else {

	    icancloud_Message* sm;

	    cancelEvent (msg);

	    sm = dynamic_cast<icancloud_Message*>(msg);
	    sendResponseMessage(sm);

	}
}

void H_NETManager_Base::processRequestMessage (icancloud_Message *sm){

	int vm_gate;
	int operation;
	int decision;

	string virtual_destinationIP, virtual_localIP;
	string destinationIP, localIP;
	string ipNode;
	int userID;
	int vmID;

	icancloud_App_NET_Message* sm_net;
	icancloud_App_IO_Message *sm_io;

	vector<icancloud_App_NET_Message*> sm_close;

	// Init ..
		sm_net = dynamic_cast <icancloud_App_NET_Message*> (sm);
		sm_io = dynamic_cast<icancloud_App_IO_Message *>(sm);

		userID = sm->getUid();
		vmID = sm->getPid();
		operation = sm->getOperation();

		sm_close.clear();

	// The message came from a node application ..
	if (sm->arrivedOn("fromNodeNet")){

		if (sm_net != NULL){

            // The message is a migration operation
            if ((operation == SM_STOP_AND_DOWN_VM) ||
                (operation == SM_ITERATIVE_PRECOPY) ||
                (operation == SM_VM_ACTIVATION) ||
                (operation == SM_CONNECTION_CONTENTS) )   {

                sendRequestMessage(sm_net, toVMNet->getGate(nodeGate));

            // The message is a communication between vms
            } else {

                schedulingNET(sm);
            }

        // It is a io operation
		} else {

			// Reception of the message at node target..
			sm_io->setRemoteOperation(false);
			sm->setNextModuleIndex(storageApp_ModuleIndex);
			sendRequestMessage(sm, toVMNet->getGate(nodeGate));
		}

	}
	// The message came from the disk, a remote storage operation ..
	else if (sm->arrivedOn("fromHStorageManager")){
	    sendRequestMessage(sm, toNodeNet);
	}

	// The message came from a vm application ..
	else if (sm->arrivedOn("fromVMNet")){

		if(operation == SM_SET_IOR){

			localNetManager->createVM(sm);
			delete (sm);

		}
		// The message arrived to create the remote connection
		else if (operation == SM_VM_REQUEST_CONNECTION_TO_STORAGE){

		    // Check if everything is ok
			decision = localNetManager->manage_create_storage_Connection(sm);

			// Set the send the operationto the storage manager
			if (decision == 0){

			    sm_net->setOperation(SM_SET_HBS_TO_REMOTE);
				sendRequestMessage(sm_net, toHStorageManager);

			} else {
				enqueuePendingMessage(sm_net);
			}
		}
		// Message came from st_remote_Storage cells
		else if (operation == SM_SET_HBS_TO_REMOTE){

            sm_net->setOperation(SM_VM_REQUEST_CONNECTION_TO_STORAGE);
            sendRequestMessage(sm_net, toNodeNet);
		}

		else if (operation == SM_DELETE_USER_FS)	{
			sm_io = new icancloud_App_IO_Message();

			sm_io->setOperation(SM_DELETE_USER_FS);
            sm_io->setPid(userID);
            sm_io->setUid(vmID);
			delete(sm);
			sendRequestMessage(sm_io, toHStorageManager);

		}

		//Connect node - node (vm migration)
		else if (operation == SM_NODE_REQUEST_CONNECTION_TO_MIGRATE)
		{
			sendRequestMessage(sm, toNodeNet);
		}

		else if (operation == SM_STOP_AND_DOWN_VM){

            vm_gate = getGateByID(sm->getPid(), sm->getUid());

			if (vm_gate == -1){

				// Node host, send the message of vm activation to the target node
				sendRequestMessage(sm, toNodeNet);

			} else {

				sendRequestMessage(sm, toVMNet->getGate(vm_gate));
			}

		}
		else if ((operation == SM_VM_ACTIVATION) ||
				 (operation == SM_CONNECTION_CONTENTS)) {

			sendRequestMessage(sm, toNodeNet);

		}

		else if ((operation == ALLOCATE_MIGRATION_DATA)||
				 (operation == GET_MIGRATION_DATA)||
				 (operation == SET_MIGRATION_CONNECTIONS)) {

			sendRequestMessage(sm, toHStorageManager);

		}


		else if (operation == SM_MIGRATION_REQUEST_LISTEN){

			localNetManager->manage_listen(sm);
			sendRequestMessage(sm, toNodeNet);

		}
		else if (operation == SM_CLOSE_VM_CONNECTIONS){

		    sm_close = localNetManager->manage_close_connections(sm->getUid(), sm->getPid());

		    for (int i = 0; i < (int)sm_close.size(); i++){
		        sendRequestMessage((*(sm_close.begin() + i)),toNodeNet);
		    }

		    sm->setIsResponse(true);
		    sendResponseMessage(sm);
		}
		else if ((operation == SM_CREATE_CONNECTION) ||
		        (operation  == SM_LISTEN_CONNECTION) ||
		        (operation  == SM_CLOSE_VM_CONNECTIONS) ||
		        (operation  == SM_CLOSE_CONNECTION) ||
		        (operation  == SM_SEND_DATA_NET) ||
		        (operation  == MPI_SEND) ||
                (operation  == MPI_RECV) ||
                (operation  == MPI_BARRIER_UP)   ||
                (operation  == MPI_BARRIER_DOWN) ||
                (operation  == MPI_BCAST)   ||
                (operation  == MPI_SCATTER) ||
                (operation  == MPI_GATHER)){

		    //////////////
           // Overhead //

           if (   (net_overhead != 0.0) &&
                  (sm->getArrivalGate() != fromNodeNet) &&
                  (operation  != SM_CREATE_CONNECTION) &&
                  (operation  != SM_LISTEN_CONNECTION) &&
                  (operation  != SM_CLOSE_VM_CONNECTIONS) &&
                  (operation  != SM_CLOSE_CONNECTION)
               ){
               overhead* ov;
               ov = new overhead();
               ov->msg = sm;
               ov->timeStamp = simTime();
               overheadStructure.push_back(ov);
           }
           //////////////

		    schedulingNET(sm);

		}


		else if (operation == SM_CHANGE_NET_STATE){

			sendRequestMessage(sm, toNodeNet);
		}

	    //Check arrival of a MPI message
        else if ((sm_io != NULL) && (sm_io->getRemoteOperation())){
            sendRequestMessage(sm, toHStorageManager);
        }

        // A message from the app to the net
        else if (sm_net != NULL){

            showErrorMessage("Error. H_NET_Manager -> processRequestMessage, does not recognize the Operation: %i\n", sm->getOperation(), sm_net->getLocalIP() ,sm_net->getDestinationIP());
        }
        else {
            showErrorMessage("Error. H_NET_Manager -> processRequestMessage, does not recognize the message. Operation: %i\n", sm->getOperation());
        }

	}

}

void H_NETManager_Base::processResponseMessage (icancloud_Message *sm){


	icancloud_App_NET_Message* sm_net;
	int operation;
	bool found = false;
	cMessage* msg;

	sm_net = dynamic_cast <icancloud_App_NET_Message*> (sm);
	operation = sm->getOperation();

	//Connect vm - vm
	if (sm_net != NULL) {

		if ((operation == SM_CREATE_CONNECTION)){
		    localNetManager->connectionStablished(sm);

		       if (net_overhead != 0.0){

                   for (int i = 0; (i < (int)overheadStructure.size()) && !found; i++){

                       overhead* ov = (*(overheadStructure.begin() + i));

                       if (ov->msg->getId() == sm->getId()){
                           found = true;
                           msg = check_and_cast<cMessage*>(sm);
                           scheduleAt (simTime() + ( (simTime() - ov->timeStamp) * net_overhead), msg);
                           printf("--->%lf\n",(simTime() + ( (simTime() - ov->timeStamp) * net_overhead)).dbl());

                           overheadStructure.erase(overheadStructure.begin()+i);
                       }
                   }
               }
               if (!found)  sendResponseMessage(sm);

		}
		// The message came from create a connection. The storage cells have to be updated
		else if(operation == SM_VM_REQUEST_CONNECTION_TO_STORAGE) 	{
		    localNetManager->connectionStablished(sm);
		    sm->setOperation(SM_SET_HBS_TO_REMOTE);
		    sendResponseMessage(sm);
		}
		// The message came from the storage cells to notify OS the connection end
		else if(operation == SM_SET_HBS_TO_REMOTE) {
            sm->setOperation(SM_VM_REQUEST_CONNECTION_TO_STORAGE);
            sendResponseMessage(sm);
		}
		else {
			localNetManager->manage_receiveMessage(sm);

            if (net_overhead != 0.0){

                for (int i = 0; (i < (int)overheadStructure.size()) && !found; i++){

                    overhead* ov = (*(overheadStructure.begin() + i));

                    if (ov->msg->getId() == sm->getId()){
                        found = true;
                        msg = check_and_cast<cMessage*>(sm);
                        scheduleAt (simTime() + ( (simTime() - ov->timeStamp) * net_overhead), msg);
                        overheadStructure.erase(overheadStructure.begin()+i);
                    }
                }
            }
            if (!found)  sendResponseMessage(sm);
		}
	}
	else {
	    sendResponseMessage(sm);
	}
}

void H_NETManager_Base::enqueuePendingMessage(icancloud_Message* sm){

		enqueuedMessage* msg;

		msg = new enqueuedMessage();

		msg->timesEnqueued = 0;
		msg->sms = sm;
		msg->time_enqueued = simTime().dbl();

		pendingConnections.push_back(msg);

		cMessage *initScheduler = new cMessage (SM_APP_ALARM.c_str());
		scheduleAt (simTime() + 1, initScheduler);
}

void H_NETManager_Base::checkPendingMessages(){

	Enter_Method_Silent();

		enqueuedMessage* msg;
		unsigned int i;
		int timesEnqueued;
		icancloud_Message* sm;
		int decision;
		int operation;

		for (i = 0; i < pendingConnections.size(); i++){
			msg = (*(pendingConnections.begin()+i));

			timesEnqueued = msg->timesEnqueued;
			msg->timesEnqueued++;

			sm = msg->sms;
			operation = sm->getOperation();

			if (!(timesEnqueued > 60)) {

				if (operation == SM_CREATE_CONNECTION){
					decision = localNetManager->manage_createConnection(sm);
				}
				else if (operation == SM_VM_REQUEST_CONNECTION_TO_STORAGE){
					decision = localNetManager->manage_create_storage_Connection(sm);
				}

				if (decision == 0){

				    // The message came from the os to create the connection
					if (operation == SM_VM_REQUEST_CONNECTION_TO_STORAGE){

						sm->setOperation(SM_SET_HBS_TO_REMOTE);
						sendRequestMessage(sm, toHStorageManager);
					}
					// The messag came from the internals storage management to the net
					else if (operation == SM_SET_HBS_TO_REMOTE){
					    sm->setOperation(SM_VM_REQUEST_CONNECTION_TO_STORAGE);
					    sendRequestMessage(sm, toNodeNet);
					}

					pendingConnections.erase(pendingConnections.begin()+i);

				} else {

	                cMessage *initScheduler = new cMessage (SM_APP_ALARM.c_str());
	                scheduleAt (simTime() + 1, initScheduler);

				}
			} else {

			    if (timesEnqueued > connectionTimeout){
                    sm->setIsResponse(true);
                    sm->setOperation(SM_ERROR_PORT_NOT_OPEN);
                    sendResponseMessage(sm);
                    pendingConnections.erase(pendingConnections.begin()+i);
                }
			}
		}

}

void H_NETManager_Base::setVM (cGate* oGate, cGate* iGate, int uId, int pId, string virtualIP, int requiredNetIf){


    int idxToVM;
    int idxFromVM;

    // Initialize control structure at node
        vmControl* control;
        control = new vmControl();
        control->gate = -1;
        control->uId = uId;
        control->pId = pId;
        control->virtualIP = virtualIP;

    // Connect to output gates
        idxToVM = toVMNet->newGate("toVMNet");
        toVMNet->connectOut(iGate,idxToVM);
        control->gate = idxToVM;

    // Connect to input gates
        idxFromVM = fromVMNet->newGate("fromVMNet");
        fromVMNet->connectIn(oGate,idxFromVM);
        control->gate = idxFromVM;

        vms.push_back(control);

}

void H_NETManager_Base::freeVM (int uId, int pId){

    bool found = false;
    for (int i = 0; (i < (int)vms.size()) && (!found); i++){
        if (((*(vms.begin() + i))->uId == uId) && ((*(vms.begin() + i))->pId == pId)){

            toVMNet->freeGate ((*(vms.begin() + i))->gate);
            fromVMNet->freeGate ((*(vms.begin() + i))->gate);

            vms.erase(vms.begin()+i);
            found = true;
        }
    }

    if (!found) throw cRuntimeError ("H_NETManager_Base::freeVM--> user:%i - vmId:%i not exists at hypervisor\n", uId, pId);
}

int H_NETManager_Base::getGateByID (int uId, int pId){

    bool found = false;
    int gate = -1;

    for (int i = 0; (i < (int)vms.size()) && (!found); i++){
        if (((*(vms.begin() + i))->uId == uId) && ((*(vms.begin() + i))->pId == pId)){

            gate = ((*(vms.begin() + i))->gate);
            found = true;
        }
    }

    if (!found) throw cRuntimeError ("H_NETManager_Base::getGateByID--> user:%i - vmId:%i not exists at hypervisor\n", uId, pId);

    return gate;
}

int H_NETManager_Base::getGateByVIP (string virtualIP, int uId){

    bool found = false;
    int gate = -1;

    for (int i = 0; (i < (int)vms.size()) && (!found); i++){
        if (
           ((*(vms.begin() + i))->virtualIP == virtualIP.c_str()) &&
           ((*(vms.begin() + i))->uId == uId)
           ){

            gate = ((*(vms.begin() + i))->gate);
            found = true;
        }
    }

    if (!found) throw cRuntimeError ("H_NETManager_Base::getGateByID--> Vm with ip %s not exists at hypervisor\n", virtualIP.c_str());

    return gate;
}


//void H_NETManager_Base::processRequestMessage (icancloud_Message *sm){
//
//    int vm_gate;
//    int operation;
//    int decision;
//    unsigned int i;
//
//    string virtual_destinationIP, virtual_localIP;
//    string destinationIP, localIP;
//    string ipNode;
//    int userID;
//    int vmID;
//
//    icancloud_App_NET_Message* sm_net;
//    icancloud_App_IO_Message *sm_io;
//    icancloud_MPI_Message* sm_mpi;
//
//    vector<icancloud_App_NET_Message*> sm_close;
//
//    // Init ..
//        sm_net = dynamic_cast <icancloud_App_NET_Message*> (sm);
//        sm_io = dynamic_cast<icancloud_App_IO_Message *>(sm);
//        sm_mpi = dynamic_cast<icancloud_MPI_Message *>(sm);
//
//        userID = sm->getUid();
//        vmID = sm->getPid();
//        operation = sm->getOperation();
//
//        sm_close.clear();
//
//    // The message came from a node application ..
//    if (sm->arrivedOn("fromNodeNet")){
//
//        if (sm_net != NULL){
//
//            // the message came from the node
//            if (userID == 0){
//
//                sendRequestMessage(sm_net, toVMNet->getGate(nodeGate));
//
//            // the message came from a vm
//            } else {
//
//                // The message is a migration operation
//                if ((operation == SM_STOP_AND_DOWN_VM) ||
//                    (operation == SM_ITERATIVE_PRECOPY) ||
//                    (operation == SM_VM_ACTIVATION) ||
//                    (operation == SM_CONNECTION_CONTENTS) )   {
//
//                    sendRequestMessage(sm_net, toVMNet->getGate(nodeGate));
//
//                // The message is a communication between vms
//                } else {
//
//                    localNetManager->manage_receiveMessage(sm);
//
//                    vm_gate = getGateByVIP(sm_net->getDestinationIP());
////                    if (sm_mpi != NULL)
////                        sendRequestMessage(sm_mpi, toVMNet->getGate(sm_mpi->getDestRank()));
////                    else
//                        sendRequestMessage(sm_net, toVMNet->getGate(vm_gate));
//
//                }
//            }
//
//        } else {
//
//            // Reception of the message at node target..
//            sm_io->setRemoteOperation(false);
//            sm->setNextModuleIndex(storageApp_ModuleIndex);
//            sendRequestMessage(sm, toVMNet->getGate(nodeGate));
//        }
//
//    }
//    // The message came from the disk, a remote storage operation ..
//    else if (sm->arrivedOn("fromHStorageManager")){
//
//        sendRequestMessage(sm_io, toNodeNet);
//
//    }
//
//    // The message came from a vm application ..
//    else if (sm->arrivedOn("fromVMNet")){
//
//        if(operation == SM_SET_IOR){
//
//            localNetManager->createVM(sm);
//
//            delete (sm);
//        }
//        else if (operation == SM_VM_REQUEST_CONNECTION_TO_STORAGE){
//
//            decision = localNetManager->manage_create_storage_Connection(sm);
//
//            // If everything is ok..
//            if (decision == 0){
//
//                sm_io = new icancloud_App_IO_Message();
//
//                sm_io->setOperation(SM_SET_HBS_TO_REMOTE);
//                sm_io->setPid(userID);
//                sm_io->setUid(vmID);
//                sm_io->setNfs_connectionID(sm_net->getTargetPosition());
//                sm_io->setNfs_type(sm_net->getFsType());
//
//                // sm_net message has been modified, so it is needed to change the address and port by the virtual ones
//                sm_io->setNfs_destAddress(sm_net->getVirtual_destinationIP());
//                sm_io->setNfs_destPort(sm_net->getVirtual_destinationPort());
//
//                sendRequestMessage(sm_net, toNodeNet);
//                sendRequestMessage(sm_io, toHStorageManager);
//
//            } else {
//                enqueuePendingMessage(sm_net);
//            }
//        }
//
//        else if (operation == SM_UNBLOCK_HBS_TO_REMOTE){
//
//            sm_io = new icancloud_App_IO_Message();
//
//            sm_io->setOperation(SM_UNBLOCK_HBS_TO_REMOTE);
//            sm_io->setPid(userID);
//            sm_io->setUid(vmID);
//            sm_io->setCommId(sm->getCommId());
//            sm_io->setNfs_destAddress(sm_net->getDestinationIP());
//            sm_io->setNfs_destPort(sm_net->getDestinationPort());
//            sm_io->setNfs_connectionID(sm_net->getConnectionId());
//            sm_io->setNfs_type(sm_net->getConnectionType());
//            sm_io->setCommId(sm_net->getCommId());
//            sm_io->setConnectionId(sm_net->getConnectionId());
//
//            sendRequestMessage(sm_io, toHStorageManager);
//
//            delete (sm);
//        }
//
//        else if (operation == SM_DELETE_USER_FS)    {
//            sm_io = new icancloud_App_IO_Message();
//
//            sm_io->setOperation(SM_DELETE_USER_FS);
//            sm_io->setPid(userID);
//            sm_io->setUid(vmID);
//            delete(sm);
//            sendRequestMessage(sm_io, toHStorageManager);
//
//        }
//
//        //Connect node - node (vm migration)
//        else if (operation == SM_NODE_REQUEST_CONNECTION_TO_MIGRATE)
//        {
//            sendRequestMessage(sm, toNodeNet);
//        }
//
//        else if (operation == SM_STOP_AND_DOWN_VM){
//
////          vm_gate = *(scheduler->get_NIC_vm_Gate(sm->getVmID()).begin());
//
//            vm_gate = getGateByID(sm->getPid(), sm->getUid());
//
//            if (vm_gate == -1){
//
//                // Node host, send the message of vm activation to the target node
//                sendRequestMessage(sm, toNodeNet);
//
//            } else {
//
//                sendRequestMessage(sm, toVMNet->getGate(vm_gate));
//            }
//
//        }
//        else if ((operation == SM_VM_ACTIVATION) ||
//                 (operation == SM_CONNECTION_CONTENTS)) {
//
//            sendRequestMessage(sm, toNodeNet);
//
//        }
//
//        else if ((operation == ALLOCATE_MIGRATION_DATA)||
//                 (operation == GET_MIGRATION_DATA)||
//                 (operation == SET_MIGRATION_CONNECTIONS)) {
//
//            sendRequestMessage(sm, toHStorageManager);
//
//        }
//
//
//        else if ((operation == SM_LISTEN_CONNECTION) ||
//                 (operation == SM_MIGRATION_REQUEST_LISTEN)){
//
//            localNetManager->manage_listen(sm);
//            sendRequestMessage(sm, toNodeNet);
//
//        }
//        else if (operation == SM_CREATE_CONNECTION){
//
//            decision = localNetManager->manage_createConnection(sm);
//
//            // If everything is ok..
//            if (decision == 0){
//                sendRequestMessage(sm_net, toNodeNet);
//            } else {
//                enqueuePendingMessage(sm_net);
//            }
//
//
//        }
//
//        else if (operation == SM_CLOSE_VM_CONNECTIONS){
//
//            sm_close = localNetManager->manage_close_connections(vmID, userID);
//
//            for (i = 0; i < sm_close.size(); i++){
//                sendRequestMessage((*(sm_close.begin()+i)), toNodeNet);
//            }
//
//            // To distinguish between when the message appears and when it has been proccessed.
//            sm->setIsResponse(true);
//            // Notify to the cloud manager
//            sendRequestMessage(sm_net, toVMNet->getGate(nodeGate));
//
//
//        }
//        else if (operation == SM_CLOSE_CONNECTION){
//
//            localNetManager->manage_close_single_connection(sm);
//
//            sendRequestMessage(sm, toNodeNet);
//
//        }
//
//        else if (operation == SM_CHANGE_NET_STATE){
//
//            sendRequestMessage(sm, toNodeNet);
//
//        }
//
//        //Check arrival of a MPI message
//        else {
//
//                // At the node host, from the
//                if ((sm_io != NULL) && (sm_io->getRemoteOperation())){
//                    sendRequestMessage(sm, toHStorageManager);
//                }
//
//                // A message from the app to the net
//                else if (sm_net != NULL){
//
//                    // MPI message!
//                    if ((sm->getOperation() == MPI_SEND) ||
//                        (sm->getOperation() == MPI_RECV) ||
//                        (sm->getOperation() == MPI_BARRIER_UP)   ||
//                        (sm->getOperation() == MPI_BARRIER_DOWN) ||
//                        (sm->getOperation() == MPI_BCAST)   ||
//                        (sm->getOperation() == MPI_SCATTER) ||
//                        (sm->getOperation() == MPI_GATHER)){
//
//                        sendRequestMessage(sm_mpi, toNodeNet);
//                    }
//
//                    // No MPI message...
//                    else{
//
//                        string emptyString = "";
//
//                        if (strcmp(sm_net->getDestinationIP(),emptyString.c_str()) != 0){
//                            localNetManager->manage_sendMessage(sm_net);
//                        }
//
//                        // Send the message to the net
//                        sendRequestMessage(sm_net, toNodeNet);
//                    }
//                }
//                else {
//                    showErrorMessage("Error. H_NET_Manager -> processRequestMessage, does not recognize the message. Operation: %i\n", sm->getOperation());
//                }
//        }
//    }
//
//}


