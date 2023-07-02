// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Variables {
    string public hello_solidity = "hello world";
    // fixed-size types
    bool isEnabled;
    uint a;
    address sender;
    bytes32 data;
    
    // variable-size types
    string name;
    bytes data1;
    uint[] amounts;
    mapping (address => bool) whitelist;

    // user define
    struct User {
        uint id;
        string name;
        bool isFriend;
    }
    enum Color {
        red, green, blue
    }
    // built in
        // msg.sender
        // msg.value
}