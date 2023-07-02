// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "contracts/ErrorHandlingNModifiers.sol";
import "contracts/Struct.sol";

contract Inheritance is ErrorHandling, Struct {
    // only internal or public can use
    uint b=6;
    function z() public {
        b=10;
    }
}