// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract MemoryNFT {
  mapping(uint256 => string) public memories;
  uint256 public memoryCount;

  function mintMemory(string memory _memory) public {
    memories[memoryCount] = _memory;
    memoryCount++;
  }

  function getMemory(uint256 _id) public view returns (string memory) {
    return memories[_id];
  }
}