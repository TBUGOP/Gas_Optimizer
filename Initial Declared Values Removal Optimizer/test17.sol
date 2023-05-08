// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MaxNumber {
    function findMax(uint number) public view returns (uint) {
        uint max = 0;
        if (number > max) {
            max = number;
        }
        return max;
    }
}
