pragma solidity ^0.7.0;

contract ShiftOperations {
    uint8 public value = 255;
    uint8 public value1 = 1;


    function leftShift() public view returns (uint8) {
        return value << 10; // Potential overflow if unchecked
    }

    function rightShift() public view returns (uint8) {
        return value1 >> 10; // Might result in unintended zeroing
    }
}

