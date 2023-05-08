// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract StructValues {
    struct MyValues {
        uint128 a;
        uint256 b;
        uint128 c;
    }
    MyValues values;

    
    constructor(uint128 _a, uint128 _c) {
        values = MyValues(_a, 0, _c);
    }

    function getValue(uint256 index) public view returns(uint256) {
        if(index == 0) {
            return uint256(values.a);
        } else if(index == 1) {
            return uint256(values.c);
        } else {
            revert("Index out of range");
        }
    }
}
