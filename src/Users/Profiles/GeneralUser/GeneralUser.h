/**
 * @class GeneralUser GeneralUser.cc GeneralUser.h
 *
 * The general user requests as VMs as jobs has defined.
 * He get each job that he want to launch, allocating it at the first VM that he found.
 *
 * @authors Gabriel Gonz&aacute;lez Casta&ntilde;&eacute
 * @date 2011-06-08
 */


#ifndef GENERAL_USER_H_
#define GENERAL_USER_H_

#include "AbstractCloudUser.h"

class GeneralUser : public AbstractCloudUser {

protected:


		virtual ~GeneralUser();

	   /**
		* Module initialization.
		*/
		void initialize();

	   /**
		* Module ending.
		*/
		void finish();


		// ------------------------------------------------------

		/*
		 * The basic behavior, the first step to do is select the VMs to startUp and the
		 * second is to request them to the cloud manager.
		 */
		void userInitialization ();

		/*
		 * Things to do by tenant before leave the system
		 */
		void userFinalization ();


		//------------------------ Interact with VMs -------------------------

		/* This method request to the cloud manager the VMs to start them.
		 *  @Param: The map of vms to calculate the request of vms.
		 */
		AbstractRequest* selectVMs_ToStartUp ();


		/*
		 * This method select where the app is going to execute.
		 * To execute in a VM several apps.
		 * 		- add into the request VMs more than one time the same VM.
		 * 		- get the VMs in VM_STATE_FREE and VM_STATE_RUNNING
		 */
		AbstractRequest* selectResourcesJob (jobBase* job);

		/*
		 * When the CloudManager attends a request and creates the VMs, it notifies this fact to
		 * the user with request attended. The parameters are a vector with pointers created to the VMs modules and
		 * the virtual machine type which they belong.
		 */
		void requestAttended (AbstractRequest* req);

        /*
         * When a request operation is unknown or it provokes an exception, this method
         * will be called by CloudManager.
         */
		void requestErrorDeleted (AbstractRequest* req);

		// ------------------------- Interact with jobs --------------------------------

		/*
		 * This method returns the first job of the waitingQueue structure of the user.
		 * @param: the index is the position of the job in the vector jobList.
		 */
		UserJob* selectJob ();

		/*
		 *  This method is useful to extract values from the job, or the timings of the executions.
		 *  The method notify_UserJobHasFinished is responsible for deleting the job, move it from running queue to finish queue
		 *  and call to schedule.
		 */

		void jobHasFinished (jobBase* job);

		/*
		 * This method define the behavior of the user. The order of the actions and the main decisions of the user.
		 */
		void schedule();

};

#endif /* HPC_USER_H_ */
