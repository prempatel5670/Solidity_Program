// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Enum{
    //create the enum
    enum user{allowed,not_allowed,wait}
    //create the object of enum
    user public user_state=user.allowed;
    uint8 public price=100;
    function changePrice() public{
        if(user_state==user.allowed)
        {
            price=40;
        }
    }


}
