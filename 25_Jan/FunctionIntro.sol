// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionIntro{
    uint8 age=21;

    function add(uint8 x,uint8 y) public pure returns(uint8){
        return(x+y);
    }
    function changeAge() public{
        age=age+1;
    }
    //public function
    function getAge() public view returns(uint){
        return age;
    }
    //internal function
    function fun1(){

    }
}
