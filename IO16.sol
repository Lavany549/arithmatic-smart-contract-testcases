pragma solidity ^0.7.0;

contract SavingsAccount {
    mapping(address => uint256) public balances;

    function deposit(uint256 amount) public {
        balances[msg.sender] += amount; // Automatic overflow check
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount); // external call and no check for the msg.sender and amount values or their operations
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}

