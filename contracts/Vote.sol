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
}