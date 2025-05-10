// Contract 5: Left shift overflow
pragma solidity ^0.7.0;
contract ShiftLeftOverflow {
    uint8 public balance=1;

    function shiftLeft(uint8 value) public {
        balance = balance << value; // Potential overflow
    }
}

