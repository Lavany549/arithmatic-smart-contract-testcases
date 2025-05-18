pragma solidity ^0.7.0;

contract OverflowExample {
    uint256 public value;

    function increment(uint256 _addend) public {
        value += _addend;
    }
}
