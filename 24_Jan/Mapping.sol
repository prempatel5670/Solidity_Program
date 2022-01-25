pragma solidity >=0.7.0 <0.9.0;
contract Mapping{
    mapping (uint=>uint)map;


    function set(uint key,uint value) public {
        map[key]=value;
        
    }
    function get(uint key) public view returns(uint){
        return map[key];
    }

}
