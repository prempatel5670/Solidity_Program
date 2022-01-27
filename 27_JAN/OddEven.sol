// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract OddEven{
    //create the two arrays
    uint[] internal odd_num;
    uint[] internal even_num;
    //logic
    function computeResult() internal{
         for(uint i=0;i<=10;i++){
           if(i%2==0){
            even_num.push(i);
           }
           else{
            odd_num.push(i);
           }
           
       }
        
    }
    function getEven() public returns(uint[] memory){
        //call the computeResult function
        computeResult();
        return even_num;
    }
    function getOdd() public returns(uint[] memory){
        //call the computeResult function
        computeResult();
        return odd_num;
    }
}
