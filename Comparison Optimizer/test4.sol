// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MaxValue {
    uint[] public numbers;

    function findMaxValue() public view returns (uint) {
        uint maxValue = 10;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] > 10) {
                maxValue = numbers[i];
            }
        }
        return maxValue;
    }

    function addNumber(uint _number) public {
        numbers.push(_number);
    }
}
