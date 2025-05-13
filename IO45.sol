pragma solidity ^0.7.0;

contract ShiftOverflowTest {
    uint8 public value8 = 255;
    uint256 public value256 = 2**256 - 1;

    function testLeftShiftOverflow() public view returns (uint8) {
        return value8 << 8; // Should trigger overflow in uint8
    }

    function testRightShiftUnderflow() public view returns (uint256) {
        return value256 >> 256; //  result in 0
    }
}

