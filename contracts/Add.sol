// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Add {
    uint256 public storedInteger;

    function increase() public {
        storedInteger += 1;
    }
}