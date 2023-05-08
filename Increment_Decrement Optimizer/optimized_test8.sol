// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

 
contract Fibonacci {
    uint256[] public sequence;

    function generateSequence(uint256 length) public {
        sequence.push(0);
        sequence.push(1);

        for (uint256 i = 2; i < length; ++i) {
            sequence.push(sequence[i-1] + sequence[i-2]);
        }
    }
}

