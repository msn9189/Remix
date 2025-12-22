//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Change {
    uint256 public count;

    //Function to get th current count
    function get() public view returns (uint256) {
        return count;
    }

    //Function to increment count by 1 
    function inccrease() public {
        count += 1;
    }

    //Function to decrement count by 1 
    function decrease() public {
        //This function will fail if count = 0. Be aware
        count -= 1;
    }
}