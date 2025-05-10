pragma solidity ^0.7.0;

contract Crowdfunding {
    uint8 public funds = 50;

    function addFunds(uint8 amount) public {
        funds = funds + amount;  // Adding funds to the campaign
    }

    function multiplyFunds() public view returns (uint8) {
        return funds << 3;  // Potential overflow when multiplying by a large factor
    }
}

