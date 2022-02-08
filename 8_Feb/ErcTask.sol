// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts@4.2.0/token/ERC20/ERC20.sol";
//import the ERC20 contract

contract ErcTask is ERC20{
    address private _admin;
    uint private _tokenprice;
    mapping(address => uint256) private _userbalance;
    
    constructor(uint initialsupply,uint tokenprice) ERC20("ETHER20","ETH99"){
        _mint(msg.sender,initialsupply);
        _admin=msg.sender;
        _tokenprice=tokenprice;
        
    
    }
    
    //buy token from admin
    function verifyTransaction(uint token) payable external{
        require(msg.value>=(_tokenprice*token),"insufficient balance");
        _transfer(_admin,msg.sender,token);
        _userbalance[msg.sender]+=token;
        uint remain=address(this).balance-(_tokenprice*token);
        payable(_admin).send((_tokenprice*token));
        payable(address(this)).send(remain);
       

    }
    //sell token to other person
    function buyToken(address _address,uint token,uint allow)payable external{
        require(allow>=token,"user not allow to sell");
        require(_userbalance[_address]>=token,"insufficient tokens");
        require(msg.value>=(_tokenprice*token),"insufficient balance");
        _userbalance[_address]-=token;
        _transfer(_address,msg.sender,token);
        
    

        
    } 
    // function _mint(address account, uint256 amount) internal override{
    //     // require(totalSupply()<=10000,"out of range");

    // }

}
