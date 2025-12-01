// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MiniBaseName {
    mapping(string => address) public nameToAddr; 
    mapping(address => string) public addrToName;

    uint256 public constant PRICE = 0.00001 ether;

    event Registered(string name, address owner);
}