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

#include <ComputeNode.h>

Define_Module(ComputeNode);

ComputeNode::~ComputeNode() {
    // TODO Auto-generated destructor stub
}

void ComputeNode::initialize(){
}

void ComputeNode::handleMessage(cMessage* msg){
    throw cRuntimeError ("ComputeNode::handleMessage->this module does not receive messages\n");
}
