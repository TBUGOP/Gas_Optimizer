// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

contract ArrayValues {
    uint128 a;
    uint128 c;
    uint256 b;
    uint256[] values;

    constructor() {
        values.push(uint256(a));
        values.push(b);
        values.push(uint256(c));
    }

    function getValue(uint256 index) public view returns(uint256) {
        require(index < values.length, "Index out of range");
        return values[index];
    }
}
