// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract GreaterThan100 {
    uint256 public gas;
    function isGreaterThan100(uint256 number) external {         
        gas = gasleft();         
        require(number >= 101, "Number is not greater than 100.");         
        gas -= gasleft();     
        }

}
