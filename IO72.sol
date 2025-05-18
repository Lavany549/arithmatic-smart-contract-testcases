pragma solidity ^0.7.0;

contract UnderflowTest {
    uint8 public a = 1;
    uint8 public b = 2;

    function triggerUnderflow() public view returns (uint8) {
        return a - b; // Should underflow to 255
    }
}
