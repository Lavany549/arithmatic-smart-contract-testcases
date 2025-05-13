// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract OverflowTest {
    uint8 public maxUint8 = 255;

    function addOverflow(uint8 a, uint8 b) public pure returns (uint8) {
        a = 255;
        b = 1;
        return a + b; // Potential overflow
    }

    function subUnderflow(uint8 a, uint8 b) public pure returns (uint8) {
        return a - b; // Potential underflow
    }

    function mulOverflow(uint8 a, uint8 b) public pure returns (uint8) {
        return a * b; // Potential overflow
    }
}

