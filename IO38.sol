pragma solidity ^0.7.0;

contract ConstantOverflow {
    uint8 public constant MAX = 255;

    function overflow() public pure returns (uint8) {
        return MAX + 1; // FP becoz the MAX is constant
        
    }
}

