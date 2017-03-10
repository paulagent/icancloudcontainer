#ifndef __STORAGE_MANAGER_H_
#define __STORAGE_MANAGER_H_

#include <omnetpp.h>
#include "icancloud_Base.h"
#include "icancloud_BlockList_Message.h"
#include "SMS_RAID_0.h"
#include "EnergyStatesDefinitions.h"

/**
 * @class StorageManager StorageManager.h "StorageManager.h"
 *
 * This module calculates the location of the Storages involved in an I/O operation,
 * and send the corresponding requests to the corresponding Storage Server.
 *
 * If parameter <b>numStorageSystems</b> is greater than 1, this volume manager
 * will act like a RAID controller.
 * 
 * @author Alberto N&uacute;&ntilde;ez Covarrubias
 * @date 2009-03-12
 *
 * @author Gabriel González Castañé
 * @date 2015-01-26
 */
class StorageManager :public icancloud_Base{

	protected:

	    /** Number of Storage servers */
	    unsigned int numStorageSystems;

	    /** Stride size (in bytes) */
	    unsigned int strideSize_b;

	    /** Array to show the StorageServer with an idle state */
	    bool* isStorageSystemIdle;

	    /** Request queue array */
	    cQueue* requestsQueue;

	    /** Output gate to Scheduler. */
	    cGate* toSchedulerGate;

	    /** Input gate from Scheduler. */
	    cGate* fromSchedulerGate;

	    /** Output gates to Storage System. */
	    cGate** toStorageSystemGates;

	    /** Input gates from Storage System. */
	    cGate** fromStorageSystemGates;

	    /** SplittingMessageSystem Object*/
	    SMS_RAID_0 *SMS_raid_0;
		
			

	   /**
		* Destructor
		*/
		~StorageManager();

	   /**
	 	*  Module initialization.
	 	*/
	    void initialize();


	   /**
	 	* Module ending.
	 	*/
	    void finish();


	private:

	   /**
		* Get the outGate to the module that sent <b>msg</b>
		* @param msg Arrived message.
		* @return. Gate Id (out) to module that sent <b>msg</b> or NOT_FOUND if gate not found.
		*/
		cGate* getOutGate (cMessage *msg);

	   /**
		* Process a self message.
		* @param msg Self message.
		*/
		void processSelfMessage (cMessage *msg);

	   /**
		* Process a request message.
		* @param sm Request message.
		*/
		void processRequestMessage (icancloud_Message *sm);

	   /**
		* Process a response message.
		* @param sm Request message.
		*/
		void processResponseMessage (icancloud_Message *sm);

	   /**
		* Check for the state of all buses.
		* Also, sends a message from the queues associated to a idle bus.
		*/
		void checkBuses ();

	   /**
		* Shows the SMS contents. For debug purpose only!
		*/
		void showSMSContents (bool showContents);
};

#endif
