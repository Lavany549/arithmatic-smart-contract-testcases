// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

contract SimpleToken {
    mapping(address => uint256) public balances;

    function mint(address to, uint256 amount) public {
        balances[to] += amount; // Potential overflow vulnerability
    }

    function transfer(address to, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount; // Potential overflow vulnerability - not detected
    }
}

