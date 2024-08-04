// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract math {

    function suma(uint a, uint b) public pure returns (uint _suma) {
        return a+b;
    }

    function producto(uint a, uint b) public pure returns (uint) {
        return a*b;
    }

    function _addmod(uint x, uint y, uint k) public pure returns (uint, uint) {
        return (addmod(x,y,k), (x+y)%k);
    }

    function _mulmod(uint x, uint y, uint k) public pure returns (uint, uint) {
        return (mulmod(x,y,k), (x*y)%k);
    }
}