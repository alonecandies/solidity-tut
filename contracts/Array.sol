// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Array {
    // storage array
    uint[] arr; // CRUD, dynamic size
    uint[3] arr2; // fixed size

    function DoSmt() external  {
        arr.push(2); // [2]
        arr.push(5); // [2,5]
        arr[0] = 1; // [1,5]

        delete arr[0]; // -> [0,5]

        for (uint i=0;i<arr.length;i++){
            
        }
    }

    // memory array

    function bar() external pure  {
        uint[] memory newArr = new uint[](10); // must fixed length
        newArr[0]=4; // [4]
        newArr[1]=7; // [4,7]

        delete newArr[0]; // [0,7]
    }

    // array as params

    function foo(uint[] calldata args) external {
        // external -> calldata
        // public, internal -> memory
    }
}