// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract ShiftUnderflow3 {
    uint8 public value = 10;

    function subtractAndShiftRight() public {
        value = (value - 15) >> 2;  // The subtraction leads to underflow, followed by a shift right
    }
}

