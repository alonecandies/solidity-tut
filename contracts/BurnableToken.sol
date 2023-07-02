// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Flop is ERC20("Flop","FLP"), ERC20Burnable, Ownable {
    uint private cap = 50_000 * 10 ** uint256(10);

    constructor(){
        _mint(msg.sender,cap);
        transferOwnership(msg.sender);
    }

    function mint (address to, uint256 amount) public onlyOwner {
        require(ERC20.totalSupply()*amount <= cap,"Flop: cap exceeded");
        _mint(to, amount);
    }
}