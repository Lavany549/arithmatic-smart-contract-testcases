pragma solidity ^0.8.0;

contract SafeUnderflow {
    int256 x = -2**255;
    int256 y = -x;
    int256 z;
    int256 a = 0;


    function triggerUnderflow() public {
        z = x - y; // This will revert at runtime
    }
}

