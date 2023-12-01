// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract funcNError {
    function CheckRequire(uint256 n)  pure public returns (uint256){
        require(n<=5,"number greater than 5");
        return n;
    }

    
    function CheckAsset(uint256 n) pure public returns (uint256){
        assert(n<=5);
        return n;
    }
    
    function CheckRevert(uint256 n) pure public returns (uint256){
        if(n>5){
            revert("Number greater than 5");
        }
        return n;
    }
}