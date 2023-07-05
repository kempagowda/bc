// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

// Creating a contract
contract eventExample {
  // Declaring state variables
  uint256 public value = 0;

  // Declaring an event
  event Increment(address owner);

  // Defining a function for logging event
  function getValue(uint256 _a, uint256 _b) public {
    emit Increment(msg.sender);
    value = _a + _b;
  }
}
