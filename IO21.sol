pragma solidity ^0.7.0;

contract SubtractionUnderflow {
    uint8 public minUint8 = 0;

    function subtractUnderflow(uint8 value) public view returns (uint8) {
        return minUint8 - value; // This will revert in Solidity >= 0.8.0
    }
}

