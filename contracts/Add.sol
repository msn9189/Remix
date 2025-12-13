// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract increment {
    uint256 public storedInteger;

    function increase() public {
        storedInteger += 1;
    }
}