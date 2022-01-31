// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract VirtualKeyword{
    //create a some public functions
    function fun1()public pure returns(string memory){
        return "fun1 is calling now";
    }
    function fun2()public pure returns(string memory){
        return "fun2 is calling now";
    }
    //virtual keyword is allow to change properties of function
     function fun3()public pure virtual returns(string memory){
        return "fun3 is calling now";
    }
}
contract Child is VirtualKeyword{
    //override keyword is use to chba
    function fun3()public pure override returns(string memory){
        return "hello fun3 is calling now";
    }

}
