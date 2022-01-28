// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract First{
    string public name;
    //initialize constructor
    constructor(string memory _name)
    {
        name=_name;
    }
}
contract Second{
    uint public age;
    //initialize constructor
    constructor(uint _age)
    {
        age=_age;
    }
}
contract Third is First,Second{
    //passing values in parent constructor 
    constructor() First("prem") Second(20){

    }
}
//second method
// contract Third is First("prempatel"),Second(23){}
