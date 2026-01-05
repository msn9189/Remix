// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Voting is Ownable {
    struct Proposal {
        string description;     
        uint256 yesVotes;      
        uint256 noVotes;        
        uint256 abstainVotes;  
        uint256 endTime;    
        bool executed;   
    }

    Proposal[] public proposals;
    mapping(uint256 => mapping(address => bool)) public hasVoted;

    event ProposalCreated(
        uint256 indexed proposalId,
        string description,
        uint256 endTime
    );

    event Voted(
        uint256 indexed proposalId,
        address indexed voter,
        uint8 choice // 0 = Yes, 1 = No, 2 = Abstain
    );

    function createProposal(string memory description, uint256 durationInSeconds) external onlyOwner {
        
    }
}