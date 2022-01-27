// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract VisibilityTest{
    function funPublic() public pure returns(uint){
        return 1;
    }
    function funPrivate() private pure returns(uint){
        return 2;
    }
    function funInternal() internal pure returns(uint){
     
        return 3;
    }
    function funExternal() external pure returns(uint){
        //call the private function
        uint get_value=funPrivate();
        return get_value;
    }
}
//inherite VisibilityTest on Derived contract
contract Derived is VisibilityTest{
    uint public value_internal=funInternal();
}
//create a new contract
contract Individual{
    //create the object of VisibilityTest contract
    VisibilityTest obj=new VisibilityTest();
    uint public value_external=obj.funExternal();
}
