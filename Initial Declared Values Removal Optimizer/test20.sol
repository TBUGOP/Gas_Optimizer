// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayProduct {
    uint[3] public nums = [2, 4, 6];

    function product() public view returns (uint) {
        uint result = 1;
        for (uint i = 0; i < nums.length; i++) {
            result *= nums[i];
        }
        return result;
    }
}