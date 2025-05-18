pragma solidity ^0.7.0;

contract ShiftOperations {
    int256 public value = -2;

    // Right shift operation on int256 might result in unexpected behavior
    function rightShiftBehavior() public view returns (int256) {
        return value >> 1;  // Might result in sign extension issues
    }
}

