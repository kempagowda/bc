// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "myLib.sol";

contract UseLib {
  function getsum(uint256 x, uint256 y) public pure returns (uint256) {
    return myMathLib.sum(x, y);
  }

  function getexponent(uint256 x, uint256 y) public pure returns (uint256) {
    return myMathLib.exponent(x, y);
  }
}