pragma solidity ^0.7.0;

contract AdditionOverflow {
    uint8 public maxUint8 = 255;

    function addOverflow(uint8 value) public view returns (uint8) {
        return maxUint8 + value; // This will revert in Solidity >= 0.8.0
    }
}

