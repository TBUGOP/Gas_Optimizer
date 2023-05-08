// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ArraySum {
    function sum(uint256[] memory numbers) public view returns (uint256 total) {
        for (uint256 i = 0; i < numbers.length; i+=1) {
            total += numbers[i];
        }
    }
}
