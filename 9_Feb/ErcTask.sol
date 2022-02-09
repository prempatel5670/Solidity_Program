// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts@4.2.0/token/ERC20/ERC20.sol";
//import the ERC20 contract
contract ErcTask is ERC20{
    address private _admin;
    uint private _tokenPrice;
    mapping(address => uint256) private _userBalance;
    mapping(address => uint) private _whiteListedAddress;
    
    constructor(uint initialSupply) ERC20("ETHER20","ETH7"){
        _admin=msg.sender;
    
        _mint(_admin,initialSupply);
        _userBalance[_admin]+=initialSupply;
       
        
    }
    //set token price by admin
    function setTokenPrice(uint tokenPrice) external{
       require(msg.sender==_admin,"only admin set a token price"); 
       _tokenPrice=tokenPrice*(10**18);
    }
    //validate transaction of sale and pre-sale
    function verifyTransaction(uint token) private{
        require(_userBalance[_admin]>0,"tokens are not available");
        require(msg.value>=(_tokenPrice*token),"insufficient balance");
        _transfer(_admin,msg.sender,token);
        _userBalance[msg.sender]+=token;
        _userBalance[_admin]-=token;
        uint remain=(address(this).balance)-(_tokenPrice*token);
        payable(_admin).transfer((_tokenPrice*token));
        payable(msg.sender).transfer(remain);

    }
    //any user buy a token
    function sale(uint token) payable external{
        // require(msg.value>=(_tokenPrice*token),"insufficient balance");
        // _transfer(_admin,msg.sender,token);
        // _userBalance[msg.sender]+=token;
        // uint remain=(address(this).balance)-(_tokenPrice*token);
        // payable(_admin).send((_tokenPrice*token));
        // payable(address(this)).send(remain);
        verifyTransaction(token);
       

    }
   //admin add addresses of whitelisted users
    function addAddress(address addAddress) public{
        require(msg.sender==_admin,"you are not admin");
        _whiteListedAddress[addAddress]=1;
    }
    //only whitelisted user can buy a  token
    function preSale(uint token) payable external{
        require(_whiteListedAddress[msg.sender]==1,"you are not whitelisted user");
        // require(msg.value>=(_tokenprice*token),"insufficient balance");
        // _transfer(_admin,msg.sender,token);
        // _userBalance[msg.sender]+=token;
        // uint remain=(address(this).balance)-(_tokenprice*token);
        // payable(_admin).send((_tokenprice*token));
        verifyTransaction(token);

    }
    //owner send remaining token to the particuler user
    function postSale(address owner,address receiver) external {
        require(owner==_admin,"invalid address");
        require(_userBalance[_admin]>0,"tokens are not available");
        
        _transfer(_admin,receiver,_userBalance[_admin]);
        _userBalance[receiver]+=_userBalance[_admin];
        _userBalance[_admin]-=_userBalance[_admin];
        
    }
    



}
