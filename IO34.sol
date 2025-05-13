pragma solidity ^0.7.0;

contract ShiftLeftOverflow {
    uint8 public balance = 128;

    function shiftLeft() public {
        balance = balance << 2; // Potential overflow (128 << 2 = 512, exceeds uint8 limit)
    }
}

