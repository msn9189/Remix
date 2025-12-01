// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MiniBaseName {
    mapping(string => address) public nameToAddr; 
    mapping(address => string) public addrToName;

    uint256 public constant PRICE = 0.0000001 ether;

    event Registered(string name, address owner);

    function register(string calldata name) external payable {
        require(msg.value >= PRICE, "Need 0.0000001 ETH");
        require(bytes(name).length >= 3, "Too short");
        require(nameToAddr[name] == address(0), "Taken");

        if (bytes(addrToName[msg.sender]).length > 0) {
            delete nameToAddr[addrToName[msg.sender]];
        }

        nameToAddr[name] = msg.sender;
        addrToName[msg.sender] = name;

        emit Registered(name, msg.sender);

        if (msg.value > PRICE)
            payable(msg.sender).transfer(msg.value - PRICE);
    }
}