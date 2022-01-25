// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract DataLocation{
    //creating a array
    uint[] public array1=[1,2,3,4,5];
    uint[] public array2;
    function storageData() public{
        uint[] storage arrs=array1;
        arrs[2]=90;
    }
    function memoryData() public{
        uint[] memory arrm=array1;
        arrm[1]=100;
        array2=arrm;

    }
    function getData() public view returns(uint[] memory){
        return array2;
    }
}
