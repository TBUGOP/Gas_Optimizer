// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract NonZeroCheck {
    function checkNonZero(uint256 x) public pure {
        require(x > 0);
    }
}
