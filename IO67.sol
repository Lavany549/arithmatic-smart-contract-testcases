pragma solidity ^0.8.0;

contract SafeUnderflow {
    uint8 public x = 2;
    uint8 public y = 5;
    uint8 public z;

    function triggerUnderflow() public {
        z = x - y; // This will revert at runtime
    }
}

