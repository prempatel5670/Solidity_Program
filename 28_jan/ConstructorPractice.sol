// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ConstructorPractice{
    //create a state variable
    string public name;
    uint public age;
    uint public x;
    //define  a constructor
    constructor(string memory _name,uint _age){
        name=_name;
        age=_age;
        

    }
}

