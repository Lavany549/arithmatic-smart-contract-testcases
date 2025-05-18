// Contract 2: Subtraction underflow
pragma solidity ^0.7.0;
contract UnderflowSubtraction {
    uint8 public balance;
    
    function subtract(uint8 value) public {
        balance = balance - value; // Potential underflow
    }
}

