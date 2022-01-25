// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract Require{
    uint8 public age=50;
    function getValue(uint x) public {
        age=age-5;
        require(x>2,"invalid input");
    }
}
