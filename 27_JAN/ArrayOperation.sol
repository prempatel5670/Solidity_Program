// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ArrayOperation{
    //create the dynamic size array
    uint[] public num_array;
    //create the bytes array(fixed size)
    bytes3 public bytes_array;
    //add value on array
    function addValue(uint item) public {
        num_array.push(item);
    }
    //get length of array
    function getLength() public view returns(uint){
        return num_array.length;

    }
    //delete value of array
    function deleteValue() public{
        num_array.pop();
    }

    function setBytesValue() public {
        bytes_array="xyz";
        //bytes array are can't modified
        // bytes_array[0]="a";
    }
}
