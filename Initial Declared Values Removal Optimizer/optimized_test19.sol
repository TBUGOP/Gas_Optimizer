// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArraySum {
    uint256[5] public nums = [0, 0, 0, 0, 0];

    function sum() public view returns (uint256) {
        uint256 result;
        for (uint256 i; i < nums.length; i++) {
            result += nums[i];
        }
        return result;
    }
}
