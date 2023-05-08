// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MaxValue {
    uint[] public values;
    
    function getMax() public view returns (uint) {
        uint max;
        uint _myArray = values.length;

        for (uint i; i < _myArray; i++) {
            if (values[i] > max) {
                max = values[i];
            }
        }
        return max;
    }
}
