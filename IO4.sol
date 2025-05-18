pragma solidity ^0.7.0;

contract UnderflowExample {
    uint256 public value;

    function decrement(uint256 _subtrahend) public {
        value -= _subtrahend;
    }
}
