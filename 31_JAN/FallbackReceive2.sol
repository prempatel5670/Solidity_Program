// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FallbackReceive2{
    //create a event
    event storedata(string _funname,uint _value,address _sender,bytes _userdata);
    //fallback method take data+ether
    fallback() external payable{
        emit storedata("fallback",msg.value,msg.sender,msg.data);

    }
    //only take ether
    receive() external payable{

    }
   

}
