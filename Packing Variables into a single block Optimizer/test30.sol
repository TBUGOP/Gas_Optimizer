// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

contract ArraySum {
uint128 a;
uint256 b;
uint128 c;
uint256[] values;

constructor() {
    values.push(uint256(a));
    values.push(b);
    values.push(uint256(c));
}

function sum() public view returns(uint256) {
    uint256 total = 0;
    for(uint256 i = 0; i < values.length; i++) {
        total += values[i];
    }
    return total;
}
}