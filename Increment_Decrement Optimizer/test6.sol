// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract BlockNumberTracker {
    uint256 public latestBlockNumber;
    uint256 private i;
    function updateLatestBlockNumber() public {
        i = i + 1;
        latestBlockNumber = block.number;
    }
}
