// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract IntegerOverflowExample {
    uint256 public totalSupply = (2**256 -1);
    uint256 public totalSupply1 = 0;

    function increaseSupply(uint256 _amount) public {
        
	    totalSupply += 1;
    }

    function decreaseSupply(uint256 _amount) public {
        totalSupply1 -= 1; // Potential underflow
    }
}

