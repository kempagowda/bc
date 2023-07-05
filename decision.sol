// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

// Creating a contract
contract Types {
    
    // Declaring state variables
    uint256 i = 10;
    string result;

    function decision_making() public payable returns (string memory) {
        if (i < 10) {
            result = "less than 10";
        } 
        else if (i == 10) {
            result = "equal to 10";
        } 
        else {
            result = "greater than 10";
        }        
        return result;
    }
}

