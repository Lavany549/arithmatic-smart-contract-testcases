pragma solidity ^0.7.0;

contract ShiftRightUnderflow {
    uint8 public balance = 1;

    function shiftRight() public {
        balance = balance >> 2; // Potential underflow (1 >> 2 = 0)
    }
}

