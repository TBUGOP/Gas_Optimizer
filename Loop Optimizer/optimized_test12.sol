// SPDX-License-Identifier: MIT
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CountEvenNumbers {
    uint[] public numbers;
    
    function countEven() public view returns (uint) {
        uint count;
        uint _myArray = numbers.length;
        for (uint i; i < _myArray; i++) {
            if (numbers[i] % 2 == 0) {
                count++;
            }
        }
        return count;
    }
}
