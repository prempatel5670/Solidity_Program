// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;  
//create a interface to contain erc20 standard required methods
interface token{
    function totalSupply() external returns (uint _totalSupply);
    function balanceOf(address _owner) external returns (uint balance);
    function transfer(address _to, uint _value) external returns (bool success);
    function transferFrom(address _from, address _to, uint _value) external returns (bool success);
    function approve(address _spender, uint _value) external returns (bool success);
    function allowance(address _owner, address _spender) external returns (uint);
    event Transfer(address _from, address _to, uint _value);
    event Approval(address _owner, address _spender, uint _value);
}
//implements the interface
contract Erc20 is token{
string public name;
string public symbol;
uint  public decimals=18;
uint internal TotalSupply;
mapping (address => uint) private _balanceof;
mapping (address => mapping (address => uint)) private _allowance;
constructor(string memory _name,string memory _symbol,uint initial_supply){
    name=_name;
    symbol=_symbol;
    // TotalSupply=initial_supply*(10**decimals);
    TotalSupply=initial_supply;
    _balanceof[msg.sender]=TotalSupply;
 
}
//return totalsupply of token
function totalSupply() external override view returns (uint){
    return TotalSupply;
}
//return balance
function balanceOf(address _owner) external override view returns(uint){
    return _balanceof[_owner];
 
}
//trasfer amount to other account
function transfer(address _to, uint _value) external override returns (bool success){
    require(_to!= address(0), "transfer to the zero address");
    if (_value>0 && _balanceof[msg.sender]>=_value){
        _balanceof[msg.sender]-=_value;
        _balanceof[_to]+=_value;
        return true;
    }
    else{
        revert("insufficient balance");
    }
 
}
//transfer amount between to diffrent user
function transferFrom(address _from, address _to, uint _value) external override returns (bool success)
{
    require(_from!= address(0), "transfer from the zero address");
    require(_to!= address(0), "transfer to the zero address");
    if (_allowance[msg.sender][_from]>=_value){
        _balanceof[msg.sender]-=_value;
        _balanceof[_to]+=_value;
        _allowance[msg.sender][_from]-=_value;
        emit Transfer(_from,_to,_value);
        return true;
    }
    else{
        return false;
    }
   
     
 
 
 
}
//approve the spender
function approve(address _spender, uint _value) public override returns (bool success) {
        _allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender,_spender,_value);
        return true;
    }
//remaining balance of approval balance
function allowance(address _owner, address _spender) public view override returns (uint){
        return _allowance[_owner][_spender];
    }
//create a token
function mint(uint amount) public returns(bool){
    require(msg.sender!= address(0),"mint to the zero address");
    _balanceof[msg.sender]+=amount;
    TotalSupply+=amount;
    emit Transfer(address(0),msg.sender,amount);
    return true;
}

//destroy a token
function burn(uint _value) public returns(bool){
    require((msg.sender)!= address(0),"burn from the zero address");
    require(_balanceof[msg.sender]>=_value,"insufficient balance");
    _balanceof[msg.sender]-=_value;
    TotalSupply-=_value;
    emit Transfer(msg.sender,address(0),_value);
    return true;


}
 
 
}
