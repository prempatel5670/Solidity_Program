// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts@4.2.0/token/ERC20/ERC20.sol";
//import the ERC20 contract
contract openzeppelin is ERC20{
    constructor(uint initialsupply) ERC20("HELLO","XYZ"){
        _mint(msg.sender,initialsupply);
    }
}
