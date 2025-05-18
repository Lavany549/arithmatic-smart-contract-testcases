// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract ShiftOverflow1 {
    uint8 public value = 255;  // Max value for uint8

    function shiftLeft() public {
        value = value << 1;  // This will cause an overflow in the 8-bit unsigned integer
    }
}

