// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CountUniqueValues {
    uint[] public values;
    
    function countUnique() public view returns (uint) {
        uint count = 0;
        for (uint i = 0; i < values.length; i++) {
            bool isUnique = true;
            for (uint j = 0; j < i; j++) {
                if (values[i] == values[j]) {
                    isUnique = false;
                    break;
                }
            }
            if (isUnique) {
                count++;
            }
        }
        return count;
    }
}
