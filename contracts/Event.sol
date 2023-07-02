// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Event {
    event deposit (address indexed from, uint amount);

    function depositMoney (uint amount) external {
        emit deposit(msg.sender, amount);
    }
}