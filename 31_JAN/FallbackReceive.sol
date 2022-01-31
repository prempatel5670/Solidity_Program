// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FallbackReceive{
    //fallback method take data+ether
    fallback() external payable{

    }
    //only take ether
    receive() external payable{

    }
    //view balance of your account
    function showBalance()public view returns(uint){
        return address(this).balance;
    }

}
