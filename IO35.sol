pragma solidity ^0.7.0;

contract ShiftRightUnderflow {
    uint8 public balance = 1;

    function shiftRight() public {
        balance = balance >> 2; // becomes 0 so no underflow or overflow but no require as well
    }
}

