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
        require(durationInSeconds > 0, "Duration must be > 0");

        uint256 proposalId = proposals.length;
        proposals.push(
            Proposal({
                description: description,
                yesVotes: 0,
                noVotes: 0,
                abstainVotes: 0,
                endTime: block.timestamp + durationInSeconds,
                executed: false
            })
        );

        emit ProposalCreated(proposalId, description, block.timestamp + durationInSeconds);
    }
}