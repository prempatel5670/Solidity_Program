// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract Loops{
    //create the array(length is 3)
    uint[3] public array1;
    uint public count;
    //while loop function
    function loopWhile() public{
        while(count<array1.length){
            array1[count]=count;
            count++;
        }
    }
    //for loop function
    function loopFor() public{
        for(uint i=count;i<array1.length;i++){
            array1[count]=count;
            count++;
        }
    }
    //do while function
    function loopDoWhile() public{
        do{
            array1[count]=count;
            count++;
        }
        while(count<array1.length);
    }
}
