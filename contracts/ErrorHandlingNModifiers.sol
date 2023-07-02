// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract ErrorHandling {
    uint public a=10;
    function foo(uint testNum) public CheckA(testNum) CheckB {
        a=5;
    }

    modifier CheckA(uint test) {
        require(a==test,"a need to be 8");
        _;
    }

    modifier CheckB() {
        require(a>0,"a need to be greater than 0");
        _;
    }

    address Admin = 0x1D8197e9C63b1cBf16Ea2896F3EB4241c6A29347;

    modifier onlyOwner() {
        require(msg.sender==Admin,"only admin");
        _;
    }

    function bar() public onlyOwner {
        a = 5;
    }
}