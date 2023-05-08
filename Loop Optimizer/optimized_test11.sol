// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;  
contract ArrayLoopExample {     
    uint[] public myArray;          
    function addNumbers(uint _start, uint _end) public {         
        uint _myArray = myArray.length;
        for (uint i = _start; i < _myArray && i <= _end; i++) {             
            myArray[i] = i + 1;         
            }     
        } 
    }
