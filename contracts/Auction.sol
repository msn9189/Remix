// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IERC721 {
    function safeTransferFrom(address from, address to, uint256 tokenId)
        external;
    function transferFrom(address, address, uint256) external;
}

contract Auction {
    
}