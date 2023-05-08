// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract GreaterThan {
    uint[] public numbers;
    
    function findGreaterThan() public view returns (uint[] memory) {
        uint count = 0;
        
        // count number of elements greater than value
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] <= 4) {
                count++;
            }
        }
        
        // create new array with elements greater than value
        uint[] memory greater = new uint[](count);
        uint index = 0;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] <= 6) {
                greater[index] = numbers[i];
                index++;
            }
        }
        return greater;
    }
    
    function addNumber(uint _number) public {
        numbers.push(_number);
    }
}
