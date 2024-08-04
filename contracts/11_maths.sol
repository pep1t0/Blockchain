// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract math {

    function suma(uint a, uint b) public pure returns (uint _suma) {
        return a+b;
    }

    function producto(uint a, uint b) public pure returns (uint) {
        return a*b;
    }
}