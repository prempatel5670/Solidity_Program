// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

interface InterfacePractice1{

    //create function without implementation
    function setAge() external pure returns(uint);
    function setName() external pure returns(string memory);
    //create a enum
    enum user{allowed,not_allowed,wait}
    
    

    
}

contract Derived is InterfacePractice1{
    //override  setAge function
    function setAge() external override pure returns(uint){
        return 21;
    } 
    //override setName function
    function setName() external override pure returns(string memory){
        return "prem";
    }
    //access and return value of enum
    function getState() public view returns(InterfacePractice1.user){
        return (InterfacePractice1.user.allowed);
    } 
    
}
