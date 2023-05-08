// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MaxValue {
    uint[] public values;
    
    function getMax() public view returns (uint) {
        uint max = 0;
        for (uint i = 0; i < values.length; i++) {
            if (values[i] > max) {
                max = values[i];
            }
        }
        return max;
    }
}
