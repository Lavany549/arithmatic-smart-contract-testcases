pragma solidity ^0.7.0;

contract ShiftOperations {
    uint8 public value = 0;

    // Left shift operation on 0 results in 0, no overflow
    function leftShiftZero() public view returns (uint8) {
        return value << 1;  // Safe, value stays 0
    }
}

