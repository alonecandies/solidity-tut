// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Struct {
    struct Player {
        uint id;
        address addr;
        string name;
    }

    Player[] players;
    mapping (address=>Player) ListOfPlayers;

    function foo(string calldata _name) external {
        Player memory player1 = Player(1,msg.sender, _name);

        player1.name = "hello";

        players.push(player1);

        ListOfPlayers[msg.sender] = player1;

        delete  player1;
    }
}