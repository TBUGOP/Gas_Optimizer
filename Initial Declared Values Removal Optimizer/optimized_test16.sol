// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adder {
    function addNumber(uint number) public pure returns (uint) {
        uint result;
        result += number;
        return result;
    }
}
