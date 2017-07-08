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

#include <Container.h>
Define_Module(Container);

Container::Container()
{

    icancloud_Base::initialize();

              std::ostringstream osStream;

              migrateActive = false;
              pendingMessages.clear();
              pendingCPUMsg = 0;
              pendingNetMsg = 0;
              pendingMemoryMsg = 0;
              pendingIOMsg = 0;
              uId = -1;
              pId = -1;

    // TODO Auto-generated constructor stub
   fromDockerEngine = new cGateManager(this);
   toDockerEngine= new cGateManager(this);


}

Container::~Container()
{
    // TODO Auto-generated destructor stub
    cout <<"Container Destructor";

}

void Container::processSelfMessage (cMessage *msg){
    delete (msg);
    std::ostringstream msgLine;
    msgLine << "Unknown self message [" << msg->getName() << "]";
    throw cRuntimeError(msgLine.str().c_str());
}

void Container::processRequestMessage (icancloud_Message *msg){

    icancloud_App_NET_Message *sm_net;
    int operation;

    sm_net = dynamic_cast<icancloud_App_NET_Message *>(msg);

    operation = msg->getOperation();


        // Set the id of the message (the vm id)
        msg->setPid(pId);
        msg->setUid(uId);

        // Set as application id the arrival gate id (unique per job).
              if ((sm_net != NULL) && (sm_net->getCommId() != -1))
                  insertCommId (uId, pId, msg->getCommId(), msg->getId());


            // If msg arrive from VmMsgController
         //   if (msg->arrivedOn("fromDockerEngine")){

      //          sendRequestMessage(msg, toContainers->getGate(msg->getArrivalGate()->getIndex()));
      //      }

            else if (msg->arrivedOn("fromDockerEngine")){
                updateCounters(msg,1);

                 msg->setCommId(msg->getArrivalGate()->getIndex());

                if (sm_net != NULL){
                    // If the message is a net message and the destination user is null
                    if (sm_net->getVirtual_user() == -1){
                        // Filter the name of the user
                        sm_net->setVirtual_user(msg->getUid());
                    }

                    sm_net->setVirtual_destinationIP(sm_net->getDestinationIP());
                    sm_net->setVirtual_destinationPort(sm_net->getDestinationPort());
                    sm_net->setVirtual_localIP(sm_net->getLocalIP());
                    sm_net->setVirtual_localPort(sm_net->getLocalPort());
                }

                sendRequestMessage(msg, toDockerEngine->getGate(msg->getCommId()));
            }

        }




void Container::processResponseMessage (icancloud_Message *sm){

        // If msg arrive from OS

    updateCounters(sm,-1);



        icancloud_App_NET_Message *sm_net;
        sm_net = dynamic_cast<icancloud_App_NET_Message *>(sm);

        if (sm_net != NULL){
            updateCommId(sm_net);
        }

        sendResponseMessage(sm);

}
cGate* Container::getOutGate (cMessage *msg){

    // Define ..
        cGate* return_gate;
        int i;
        bool found;

    // Initialize ..
        i = 0;
        found = false;

        // If msg arrive from OS
   //     if (msg->arrivedOn("fromDockerEngine")){

            while ((i < gateCount()) && (!found)){
                if (msg->arrivedOn ("fromDockerEngine", i)){
                    return_gate = (gate("toDockerEngine", i));
                    found = true;
                }
                i++;
            }

     //   }





        return return_gate;
}

void Container::setId(int userId, int vmId){
    uId = userId;
    pId = vmId;

}


void Container::insertCommId(int uId, int pId, int commId, int msgId){

    // Define ..
        bool found;
        commIdVector* comm;
        commIdVectorInternals* internals;

    // Initialize ..
        found = false;

    // Search at structure if there is an entry for the same VM
        for (int i = 0; (i < (int)commVector.size()) && (!found); i++){

            // The VM exists
            if ( ((*(commVector.begin() + i))->uId == uId) && ((*(commVector.begin() + i))->pId == pId) ){

                // Create the new entry
                    internals = new commIdVectorInternals();
                    internals -> msgId = msgId;
                    internals -> commId = commId;

                // Add the new entry to the structure
                    (*(commVector.begin() + i))->internals.push_back(internals);

                found = true;      // break the loop
            }
        }

    // There is no entry for the vector..-
        if (!found){
            // Create the general entry
                comm = new commIdVector();
                comm->uId = uId;
                comm->pId = pId;
                comm->internals.clear();

            // Create the concrete entry for the message
                internals = new commIdVectorInternals();

                internals -> msgId = msgId;
                internals -> commId = commId;
                comm->internals.push_back(internals);

                commVector.push_back(comm);
        }
}

void Container::updateCommId (icancloud_App_NET_Message* sm){
    // Define ..
        bool found;
        commIdVector* comm;
        commIdVectorInternals* internals;

        // Initialize ..
            found = false;

        for (int i = 0; i < (int)commVector.size(); i++){
            comm = (*(commVector.begin() + i));
            for (int j = 0; (j < (int)comm->internals.size()) && (!found); j++){
                internals = (*(comm->internals.begin() + j));
            }
        }

        for (int i = 0; (i< (int)commVector.size()) && (!found); i++){

            comm = (*(commVector.begin() + i));

            if ( ( sm->getUid() == comm->uId ) && ( sm->getPid() == comm->pId )
               ){

                for (int j = 0; (j < (int)comm->internals.size()) && (!found); j++){

                    internals = (*(comm->internals.begin() + j));

                    if ( internals->msgId ==  sm->getId() ){
                        sm->setCommId(internals->commId);
                        comm->internals.erase(comm->internals.begin() + j);
                        found = true;
                    }
                }

                if ((found) && ((int)comm->internals.size() == 0)){
                    commVector.erase (commVector.begin() + i);
                }

            }
        }
}
void Container::updateCounters (icancloud_Message* msg, int quantity){
    icancloud_App_CPU_Message* cpuMsg;
    icancloud_App_IO_Message* ioMsg;
    icancloud_App_MEM_Message* memMsg;
    icancloud_App_NET_Message* netMsg;

    cpuMsg = dynamic_cast<icancloud_App_CPU_Message*>(msg);
    ioMsg = dynamic_cast<icancloud_App_IO_Message*>(msg);
    memMsg = dynamic_cast<icancloud_App_MEM_Message*>(msg);
    netMsg = dynamic_cast<icancloud_App_NET_Message*>(msg);

    if (cpuMsg != NULL){
        pendingCPUMsg += quantity;
    }
    else if (ioMsg != NULL){
        pendingIOMsg += quantity;
    }
    else if (memMsg != NULL){
        pendingMemoryMsg += quantity;
    }
    else if (netMsg != NULL){
        pendingNetMsg += quantity;
    }
}
