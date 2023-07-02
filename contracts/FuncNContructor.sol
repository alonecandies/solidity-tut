// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Hello {
    uint value;

    constructor (uint _a) {
        value = _a;
    }

    // visibility
        // private: default
        // internal: only call in or inherit contract
        // external: only call from outside
        // public: call from everywhere

    function getValue() external  view returns(uint){
        return value;
    }

    function setValue(uint _value) external {
        value = _value;
    }
}