// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Hello {
    mapping (address=>uint) balances;

    mapping (address => mapping (address=>bool)) approved;

    function foo() external {
        balances[msg.sender] = 100;

        delete balances[msg.sender];
        // default value: default value of type (uint -> 0, bool -> false)
        
        //nestedMappings
        approved[msg.sender][msg.sender] = true;
    }
}