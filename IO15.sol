pragma solidity ^0.7.0;

contract Voting {
    mapping(address => uint256) public votes;
    uint256 public totalVotes;

    function vote(uint256 amount) public {
        votes[msg.sender] += amount; // Automatic overflow check
        totalVotes += amount; // Automatic overflow check
    }

    function getVotes(address voter) public view returns (uint256) {
        return votes[voter];
    }
}

