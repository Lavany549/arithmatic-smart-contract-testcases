pragma solidity ^0.7.0;

contract Voting {
    uint8 public votes = 10;

    function addVote() public {
        votes = votes + 1;  // Adding a vote to the system
    }

    function shiftVotesLeft() public view returns (uint8) {
        return votes << 1;  // Potential overflow if votes exceed uint8 limit
    }

    function shiftVotesRight() public view returns (uint8) {
        return votes >> 1;  // Might cause unintended results if not carefully checked
    }
}

