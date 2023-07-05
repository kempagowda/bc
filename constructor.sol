// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

// Creating a contract
contract constructorExample {
  string str;

  constructor() public {
    str = "UDIT";
  }

  function getValue() public view returns (string memory) {
    return str;
  }
}
