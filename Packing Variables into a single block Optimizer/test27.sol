// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.4;

contract LargerValue {
    uint128 a;
    uint256 b;
    uint128 c;

    function larger() public view returns(uint256) {
        if(a > c) {
            return uint256(a);
        } else {
            return uint256(c);
        }
    }
}
