pragma solidity ^0.7.0;

contract Crowdfunding {
    mapping(address => uint256) public contributions;
    uint256 public totalContributions;

    function contribute() public payable {
        contributions[msg.sender] += msg.value; // Automatic overflow check
        totalContributions += msg.value; // Automatic overflow check
    }

    function withdraw() public {
        uint256 amount = contributions[msg.sender];
        contributions[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }
}

