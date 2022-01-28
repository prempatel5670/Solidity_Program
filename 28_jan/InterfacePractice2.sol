// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
//declared two interfaces
interface InterfacePractice2{
    function getName() external view returns(string memory);
}
interface InterfacePractice3{
    function getAge() external view returns(uint);
}
//create a child contract
contract Derived is InterfacePractice2,InterfacePractice3
{
    function getName() external override view returns(string memory){
        return "prem";
    }
    function getAge() external override view returns(uint){
        return 21;
    }

}
