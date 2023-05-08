// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract TestContract {
  uint128 a;
  uint256 b;
  uint128 c;
  
  function setValues(uint128 _a, uint256 _b, uint128 _c) public {
    a = _a;
    b = _b;
    c = _c;
  }
  
  function getValues() public view returns (uint128, uint256, uint128) {
    return (a, b, c);
  }
}
