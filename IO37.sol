pragma solidity ^0.7.0;

contract AdditionOverflow {
    uint8 public value = 250;

    function addOverflow() public returns (uint8) {
        return value + 10; // Overflow: 250 + 10 exceeds uint8 limit (255)
    }
}

