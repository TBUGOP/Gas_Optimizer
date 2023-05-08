// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract GasPriceTracker {
    uint256 public latestGasPrice;
    uint256 private i;
    function updateLatestGasPrice() public {
        i++;
        latestGasPrice = tx.gasprice;
    }
}
