// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract SendReceive {
    function send(address payable to, uint amount) external {
        to.transfer(amount); // Wei
    }

    function BuySth() external payable {
        if (msg.value>0){
            address(this).balance;
        }
    }

    receive() external  payable  {
        
    }
}