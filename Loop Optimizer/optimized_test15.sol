// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CountUniqueValues {
    uint[] public values;
    
    function countUnique() public view returns (uint) {
        uint count;
        uint _myArray = values.length;
        for (uint i; i < _myArray; i++) {
            bool isUnique = true;
            for (uint j; j < i; j++) {
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
