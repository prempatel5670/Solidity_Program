// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Modifier2{
    uint internal user_num=10;
    //define a modifier
    modifier showDetails(){
        require(user_num==10,"invalid");
        
        _;
    }
    //create a some functions
    function fun1() public view showDetails returns(string memory){
        // require(user_num==10,"invalid");
        return "calling fun1";
    }
    function fun2() public view showDetails returns(string memory){
        // require(user_num==10,"invalid");
        return "calling fun2";
    }
    function fun3() public view showDetails returns(string memory){
        // require(user_num==10,"invalid");
        return "calling fun3";
    }
}
