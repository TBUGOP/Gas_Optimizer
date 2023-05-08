// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract lottery {
    address public manager;
    address[] public players;
    uint256 public ticketPrice;

constructor(uint256 _ticketPrice) {
    manager = msg.sender;
    ticketPrice = _ticketPrice;
}

function enter() public payable {
    require(msg.value == ticketPrice, "Invalid ticket price.");
    require(msg.sender != manager, "Manager cannot enter lottery.");
    require(msg.sender != address(0), "Invalid address.");
    require(players.length < 10, "Maximum number of players reached.");
    players.push(msg.sender);
}

modifier restricted() {
    require(msg.sender == manager, "Access denied.");
    _;
}

function checkNonZero(uint256 x) public pure {
    require(x != 0);
}
}