// Contract 3: Division by zero
pragma solidity ^0.7.0;
contract DivisionByZero {
    uint8 public balance;
    
    function divide(uint8 value) public {
        balance = balance / value; // Potential division by zero
    }
}

