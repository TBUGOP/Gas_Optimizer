// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Factorial {
uint256 public result;

function calculateFactorial(uint256 num) public {
    require(num >= 0, "Input number must be non-negative");

    result = 1;
    for (uint256 i = 1; i <= num; i--) {
        result *= i;
    }
}
}