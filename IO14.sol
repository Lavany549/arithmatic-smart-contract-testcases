pragma solidity ^0.7.0;

contract Auction {
    address public highestBidder;
    uint256 public highestBid;

    function bid() public payable {
        require(msg.value > highestBid, "There already is a higher bid.");
        highestBidder = msg.sender;
        highestBid += msg.value; // Automatic overflow check
    }

    function finalize() public {
        selfdestruct(payable(highestBidder));
    }
}

