pragma solidity ^0.7.0;

contract Betting {
    uint8 public betAmount = 5;

    function placeBet(uint8 amount) public {
        betAmount = amount;  // Set the bet amount
    }

    function shiftBetAmountLeft() public view returns (uint8) {
        return betAmount << 2;  // Overflow risk when shifting bet amount
    }

    function shiftBetAmountRight() public view returns (uint8) {
        return betAmount >> 1;  // Potential unintended underflow when bet amount is small
    }
}

