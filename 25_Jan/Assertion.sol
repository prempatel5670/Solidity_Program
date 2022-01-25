// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Assertion{
    uint8 public age=25;
    address public user=msg.sender;
    //call the error
    error throwError(string,address);
    function changeAge(uint x) public{
        age=age-5;
        if(x<3){
            // revert("x is less than 3");
            revert throwError("value x less than 3",msg.sender);
        }
    }
    function validateUser() public view {
        
        assert(user==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        

    }
}
