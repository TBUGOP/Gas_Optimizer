// SPDX-License-Identifier: MIT
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CountEvenNumbers {
    uint[] public numbers;
    
    function countEven() public view returns (uint) {
        uint count = 0;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                count++;
            }
        }
        return count;
    }
}
