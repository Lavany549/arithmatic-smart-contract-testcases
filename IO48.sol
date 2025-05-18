pragma solidity ^0.7.0;

contract ShiftOperations {
    uint8 public value = 255;

    // Left shift then right shift might cause unexpected results
    function multipleShifts() public view returns (uint8) {
        uint8 shiftedValue = value << 8;  // Overflow
        return shiftedValue >> 8;  // Will cause the value to be 0
    }
}

