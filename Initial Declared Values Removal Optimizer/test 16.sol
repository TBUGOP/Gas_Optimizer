// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adder {
    function addNumber(uint number) public pure returns (uint) {
        uint result = 0;
        result += number;
        return result;
    }
}
