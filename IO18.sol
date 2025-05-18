// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

contract Token {
    mapping(address => uint256) public balances;

    function mint(address to, uint256 amount) public {
        balances[to] += amount; // Automatic overflow check in Solidity 0.8.0+
    }

    function transfer(address to, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount; // failed to detect
    }

    function batchMint(address[] memory recipients, uint256 amount) public {
        for (uint i = 0; i < recipients.length; i++) {
            mint(recipients[i], amount);
        }
    }
}

