// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Increase {
    uint256 public storedInteger;

    function increment() public {
        storedInteger += 1;
    }
}