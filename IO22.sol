pragma solidity ^0.7.0;

contract MultiplicationOverflow {
    uint8 public maxUint8 = 255;

    function multiplyOverflow(uint8 value) public view returns (uint8) {
        return maxUint8 * value; // This will revert in Solidity >= 0.8.0
    }
}

