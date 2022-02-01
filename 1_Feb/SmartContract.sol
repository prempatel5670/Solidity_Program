// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SmartContract{
    //create event to store receive details
    event log(address _from,address _to,uint _value);
    //create event to store transaction details
    event transaction_details(address _to,address _from,uint amount);
    address payable user=payable(0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678);
    uint internal user_amount;
    
    //this function returns current user address
    function createAccount() public view returns(address){
        return address(this);
    }
    //return current balance
    function showBalance() external view returns(uint){

        return address(this).balance;
    }
    //this function receive amount 
    function receiveBalance() external payable{
        user_amount=user_amount+address(this).balance;
        emit log(msg.sender,address(this),msg.value);
    }
    //transfer your balance to other account 
    function transferMoney() public {
        if ((address(this).balance)==0){
            revert("insufficient balance");
        }
        else{
        user.send(1 ether);
        //compute amount 
        uint compute_amount=(user_amount-address(this).balance);
        emit transaction_details(address(this),user,compute_amount);

        }
      
    }

}
