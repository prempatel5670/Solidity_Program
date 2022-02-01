// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract A{
    function fun1() public view returns(string memory)
    {
        return "fun1 is calling ";
    }
    //create a virtual function
    function fun2() public view virtual returns(string memory){
        return "fun2 is calling";
    }
}
//single inheritance declare
contract B is A{
    function fun2()public view override returns(string memory){
        return "fun2 is now calling";
    }

}
