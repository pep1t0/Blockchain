// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract functions {

    // Funciones tipo Pure
    function getName() public pure returns (string memory) {
        return "Dani";
    }

    // Funciones tipo View
    uint256 x = 100;

    function getNumber() public view returns (uint256) {
        return x*2;
    }

    // Funciones tipo Payable





}