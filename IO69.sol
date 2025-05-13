pragma solidity ^0.8.0;

contract SafeUnderflow {
    uint8 public x = 2**7 ;
    uint8 public y = 10;
    uint8 public z;
    

    function triggerUnderflow() public {
        z = x + 128; // This will revert at runtime
    }                      
}

