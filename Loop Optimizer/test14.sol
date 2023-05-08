// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DoubleArray {
    uint[] public numbers;
    
    function doubleValues() public {
        for (uint i = 0; i < numbers.length; i++) {
            numbers[i] *= 2;
        }
    }
}
