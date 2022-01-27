// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract Mapping{
    mapping (uint=>string)map;

    //get value from the user
    function set(uint key,string calldata value) public {
        map[key]=value;
        
    }
    //show value
    function get(uint key) external view returns(string memory){
        return map[key];
    }

}
//create derived contract inherited from Mapping contract
contract Derived is Mapping{
    

}
