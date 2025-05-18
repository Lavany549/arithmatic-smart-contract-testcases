pragma solidity ^0.8.0;

contract SafeUnderflow {
    uint256 x = 2**255 -1;
    uint8 y = uint8(x);
}

