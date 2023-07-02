// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IContractInteraction {
    // interface can't inherit
    function bar() external;
}

contract ContractInteraction{
    uint256 public a = 10;

    function foo() public {
        a=5;
    }

    function bar() external {

    }
}

contract Hello {
    address AHello;
    function setAHello(address _AHello) external {
        AHello=_AHello;
    }

    function CallFoo() external  {
        ContractInteraction h = ContractInteraction(AHello);
        h.foo();
    }

}

contract IHello {
    address AHello;
    function setAHello(address _AHello) external {
        AHello=_AHello;
    }

    function CallFoo() external  {
        IContractInteraction h = IContractInteraction(AHello);
        h.bar();
    }

}