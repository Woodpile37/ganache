// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract Debug {
  uint public value;

  event ValueSet(uint);

  constructor() public payable {
    value = 5;
  }

  function setValue(uint val) public {
    value = val;
    emit ValueSet(val);
  }

  function loop(uint times) public {
    for (uint i = 0; i < times; i++) {
      value += i;
    }
  }

  function doARevert() public {
    revert("all your base");
  }
}