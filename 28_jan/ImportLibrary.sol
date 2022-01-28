// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
//import library from other file
import {Math} from './LibraryPractice.sol';
contract Result{
    //use the library
    // using Math for uint;
    //create a function
    function showResult() public view returns(uint){
        return Math.addition(40,20);
    }

}
