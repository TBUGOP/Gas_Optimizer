// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DoubleArray {
    uint[] public numbers;
    
    function doubleValues() public {
        uint _myArray = numbers.length;
        for (uint i; i < _myArray; i++) {
            numbers[i] *= 2;
        }
    }
}
