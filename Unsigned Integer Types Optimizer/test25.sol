// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Crowdfunding {
    address public owner;
    uint256 public goalAmount;
    uint256 public totalRaised;
    mapping(address => uint256) public contributions;

    constructor(uint256 _goalAmount) {
        owner = msg.sender;
        goalAmount = _goalAmount;
    }

    function contribute() public payable {
        require(msg.value > 0, "Invalid contribution amount.");
        require(totalRaised + msg.value <= goalAmount, "Goal amount reached.");
        contributions[msg.sender] += msg.value;
        totalRaised += msg.value;
    }

    function checkNonZero(uint256 x) public pure {
        require(x != 0);
    }
}