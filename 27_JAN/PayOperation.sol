// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract PayOperation{
    //create a variable to store recipient account address
    address payable user=payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    //get ether from other account
    function getBalance() public payable{

    }
    //view balance of your account
    function showBalance()public view returns(uint){
        return address(this).balance;
    }
    //transfer your balace to other 
    function transferMoney() public {
        user.send(1 ether);
    }

}
