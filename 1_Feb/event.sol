// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Event{
    //create a event
    event log(address account,string message,uint value);
    //define a receive method to get amount
    receive() external payable{

    }
    function compute(string memory _message) public{
     emit log(msg.sender,_message,address(this).balance);

    }
    

}
