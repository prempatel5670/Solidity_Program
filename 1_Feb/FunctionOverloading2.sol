// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract First{
    function addition(uint x,uint y) public view virtual returns(uint _total){
        _total=x+y;

    }
    
}
contract Second is First{
    //combine use of virtual+override
    function addition(uint x,uint y) public view virtual override returns(uint _total){  
        _total=x+y+5;
    }
    
}
//multiple inheritance
contract Third is First,Second{
    function addition(uint x,uint y) public view override(Second,First) returns(uint _total){
        _total=x+y+2;
    }
}
