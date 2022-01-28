// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

library Math{
    //create a addition function
    function addition(uint x,uint y)external view returns(uint){
        return x+y;
    }
}
contract LibraryPractice{
    //use the Math library
    // using Math for uint;
    function showResult() public view returns(uint){
        return Math.addition(10,20);
    }
}
