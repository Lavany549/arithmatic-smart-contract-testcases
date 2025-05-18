// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract IntegerOverflowTest {
    uint8 public smallUint;
    uint256 public largeUint;
    int8 public smallInt;
    int256 public largeInt;

    constructor() {
        smallUint = 255; // max value for uint8
        largeUint = 2**256 - 1; // max value for uint256
        smallInt = 127; // max value for int8
        largeInt = 2**255 - 1; // max value for int256
    }

    function addUint8(uint8 value) public {
        smallUint += value; // Potential overflow
    }

    function addUint256(uint256 value) public {
        largeUint += value; // Potential overflow
    }

    function subtractInt8(int8 value) public {
        smallInt -= value; // Potential underflow
    }

    function multiplyInt256(int256 value) public {
        largeInt *= value; // Potential overflow
    }

    function resetValues() public {
        smallUint = 255;
        largeUint = 2**256 - 1;
        smallInt = 127;
        largeInt = 2**255 - 1;
    }
}

