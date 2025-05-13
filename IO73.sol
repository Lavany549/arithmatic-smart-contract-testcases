pragma solidity ^0.7.0;

contract WeirdShift {
    uint8 public value = 1;

    function shiftThenUnderflow() public view returns (uint8) {
        uint8 shifted = value << 2; // 1 << 2 = 4
        return shifted - 10; // 4 - 10 = underflow to 250
    }
}
