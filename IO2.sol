pragma solidity ^0.7.0;

contract OverflowExample {
    uint256 public value = 0;

    function increment(uint256 _addend) public {
        value += (2**256 - 1) ;
        value+= _addend;  // This will cause an overflow
    }
}
