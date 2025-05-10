// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract OverflowDemo {
    function test() public pure returns (uint8) {
        uint8 x =250;  
        x += 10;
        return x;
    }
}
