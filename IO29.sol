// Contract 1: Addition overflow
pragma solidity ^0.7.0;
contract OverflowAddition {
    uint8 public balance =16;
    
    function add() public {
        balance = balance + 255; // Potential overflow
    }
}

