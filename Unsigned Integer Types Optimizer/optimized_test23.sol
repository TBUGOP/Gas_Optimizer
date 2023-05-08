// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Auction {
    address public owner;
    uint256 public highestBid;
    address public highestBidder;

    constructor() {
        owner = msg.sender;
        highestBid = 0;
        highestBidder = address(0);
    }

    function bid() public payable {
        require(msg.value > highestBid, "Bid amount should be greater than highest bid.");
        require(msg.sender != owner, "Owner cannot place a bid.");
        highestBid = msg.value;
        highestBidder = msg.sender;
    }

    function checkNonZero(uint256 x) public pure {
        require(x > 0);
    }
}
