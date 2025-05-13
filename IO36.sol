pragma solidity ^0.7.0;

contract TypeCastingOverflow {
    uint256 public largeValue = 500;

    function cast() public {
        uint8 smallValue = uint8(largeValue); // Potential overflow (500 > 255) handles by solidity itself
    }
}

