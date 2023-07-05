// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract InlineAssembly {
  // Defining function
  function add(uint256 a) public view returns (uint256 b) {
    assembly {
      let c := add(a, 16)
      mstore(0x80, c)
      {
        let d := add(sload(c), 12)
        b := d
      }

      b := add(b, c)
    }
  }
}
