//1.SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract errhandling{
    address owner;

    constructor (){
        owner=msg.sender;
    }
    
    function add(uint256 a, uint b)public view returns(uint){
        require(msg.sender==owner,"Only owner can add");
        uint c=a + b;
        return c;
    }
    function tens(uint b)public pure{
        if(b*b%10!=0){
            revert("Not a multiple of 10");
        }
        
    }
    function and(uint256 d, uint256 e)public pure returns(uint){
        assert(e*d>100 && e/d>5);
        return e-d;
    }
    
}
