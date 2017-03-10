#include "BlockCache.h"

Define_Module (BlockCache);


BlockCache::~BlockCache(){
}


void BlockCache::initialize(){

	std::ostringstream osStream;

	    // Set the moduleIdName
		osStream << "BlockCache." << getId();
		moduleIdName = osStream.str();

	    // Init the super-class
	    icancloud_Base::initialize();

		// Module parameters
	    numInputs = par ("numInputs");
		hitRatio = par ("hitRatio");
		
		// Check the Volume Manager stride size
		if ((hitRatio < 0) || (hitRatio > 1))
			showErrorMessage ("Invalid hitRatio value [%f]. Must be (0 <= hitRatio >= 1)", hitRatio);
		
	    
	   	// Init the gate IDs
	    toInputGate = gate ("toInput");
	    fromInputGate = gate ("fromInput");	    
	    toOutputGate = gate ("toOutput");
	    fromOutputGate = gate ("fromOutput");
}


void BlockCache::finish(){

	// Finish the super-class
	icancloud_Base::finish();
}


cGate* BlockCache::getOutGate (cMessage *msg){

    // If msg arrive from Output
    if (msg->getArrivalGate()==fromOutputGate){
        if (gate("toOutput")->getNextGate()->isConnected()){
            return (toOutputGate);
        }
    }

    // If msg arrive from Input
    else if (msg->getArrivalGate()==fromInputGate){
        if (gate("toInput")->getNextGate()->isConnected()){
            return (toInputGate);
        }
    }


	// If gate not found!
	return NULL;
}


void BlockCache::processSelfMessage (cMessage *msg){
	showErrorMessage ("Unknown self message [%s]", msg->getName());
}


void BlockCache::processRequestMessage (icancloud_Message *sm){	
	sendRequestMessage (sm, toOutputGate);	
}


void BlockCache::processResponseMessage (icancloud_Message *sm){
	sendResponseMessage (sm);
}

