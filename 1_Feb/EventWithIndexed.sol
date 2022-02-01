// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract EventWithIndexed{
    //craeate a event
    event log(address indexed _from,address indexed _to,string _message);
    //create a function to get account address and user message
        function getDetails(address _address,string memory message) public{
            //emit the event
            emit log(msg.sender,_address,message);
        }
    
}
