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
// @author Zahra Nikdel, Bing Gao
// @date 2017-03-10


#ifndef CONTAINER_H_
#define CONTAINER_H_

#include "icancloud_Base.h"


class Container : public icancloud_Base
{
    private:

        bool migrateActive;                             // If the migration is active or not.
        vector<icancloud_Message*> pendingMessages;     // Vector to storage the pending messages
        int pendingCPUMsg;                              // Quantity of pending cpu messages
        int pendingNetMsg;                              // Quantity of pending net messages
        int pendingMemoryMsg;                           // Quantity of pending memory messages
        int pendingIOMsg;
        cGateManager* fromDockerEngine;                         // Input gate from this class to an application in docker
        cGateManager* toDockerEngine;

        int uId;                                        // The user identification value
        int pId;

    public:

        /*
         * Data structures to control the communication identificators
         */
        struct commIdVectorInternals_t{
            int commId;
            int msgId;
        };

        typedef commIdVectorInternals_t commIdVectorInternals;

        struct commIdVector_t{
            vector<commIdVectorInternals*> internals;
            int uId;
            int pId;
        };

        typedef commIdVector_t commIdVector;
        vector<commIdVector*> commVector;

        Container();
        ~Container();

    protected:

        virtual cGate* getOutGate (cMessage *msg);

           /**
            * Process a self message.
            * @param msg Self message.
            */
            virtual void processSelfMessage (cMessage *msg);

           /**
            * Process a request message.
            * @param sm Request message.
            */
            virtual void processRequestMessage (icancloud_Message *sm);

           /**
            * Process a response message.
            * @param sm Request message.
            */
            virtual void processResponseMessage (icancloud_Message *sm);

            void setId(int userId, int vmId);

            void updateCounters (icancloud_Message* msg, int quantity);

            /*
                 *  Control structure to parallel and distributed applications.
                 *  This method storage the communication ID of a message replacing it with
                 *  the app id returned from getId() method.
                 */
                void insertCommId(int uId, int pId, int commId, int msgId);

                /*
                 * This method is invoked by processResponseMessage to substitute the commId by the
                 * original befor sending if it was neccesary.
                 */
                void updateCommId (icancloud_App_NET_Message* sm);

};

#endif /* CONTAINER_H_ */
