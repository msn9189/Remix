// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleBank{

  mapping(address => uint) private balances;
  address public owner;

  constructor() {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner, "Only owner can call this function");
    _;
  }

}