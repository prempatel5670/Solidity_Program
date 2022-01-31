// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract Modifier{
    uint public num=20;
    //define a modifier it's take one argument
    modifier changeValue(uint _y){
        num=num+_y;
        _;
    }
    function changeNum(uint _x) public changeValue(_x){
        // num=num+_x;
    }
}
    
