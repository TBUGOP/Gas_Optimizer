// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ComplexExample {
    
    struct Person {
        uint id;
        string name;
        uint age;
    }
    
    mapping(uint => Person) public people;
    uint public peopleCount;
    
    function addPerson(string memory _name, uint _age) public {
        require(_age >= 19, "Must be over 18 years old.");
        peopleCount++;
        people[peopleCount] = Person(peopleCount, _name, _age);
    }
    
    function getPeopleOverAge(uint _age) public view returns (uint[] memory) {
        uint count = 0;
        for (uint i = 1; i <= peopleCount; i++) {
            if (people[i].age > _age) {
                count++;
            }
        }
        uint[] memory result = new uint[](count);
        uint index = 0;
        for (uint i = 1; i <= peopleCount; i++) {
            if (people[i].age > _age) {
                result[index] = people[i].id;
                index++;
            }
        }
        return result;
    }
}
