// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract ShiftUnderflow4 {
    uint8 public value = 10;

    function divideAndShiftRight() public {
        value = (value / 10) >> 2;  // 1>>2 = 4
    }
}

