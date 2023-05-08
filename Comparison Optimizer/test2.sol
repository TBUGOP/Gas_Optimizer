// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract PowerOf2Checker {
    uint256 public gas;
    function isPowerOf2(uint256 number) external {
        gas = gasleft();
        require(number > 0 && (number & (number - 1)) == 0, "Number is not a power of 2.");
        gas -= gasleft();
    }
}
