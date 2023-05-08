// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Token {
    address public owner;
    string public name;
    string public symbol;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        owner = msg.sender;
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = _totalSupply;
    }

    function transfer(address to, uint256 amount) public {
        require(balanceOf[msg.sender] >= amount, "Insufficient balance.");
        require(to != address(0), "Invalid address.");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
    }

    function checkNonZero(uint256 x) public pure {
        require(x != 0);
    }
}
