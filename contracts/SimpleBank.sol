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

  function deposit() external payable {
    require(msg.value > 0, "Amount must be greater than 0");
    balances[msg.sender] += msg.value;
  }

  function withdraw(uint amount) external {
    require(balances[msg.sender] >= amount, "Insufficient balance");
    balances[msg.sender] -= amount;
    payable(msg.sender).transfer(amount);
  }

  function getBalance() external view returns (uint) {
    return balances[msg.sender];
  }

}