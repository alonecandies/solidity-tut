// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract ControlStructure {
    bool public isTrue = true;

    function DoSmt() external view {
        if (isTrue==true && msg.sender == address(this)) {
            for(uint i=0;i<10;i++){
            }
        } else {
            while (isTrue){
                if(true){
                    // isTrue=false;
                    continue;
                } else {
                    break;
                }
            }
        }
    }
}