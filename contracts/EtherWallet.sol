// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

     receive() external payable {}

}