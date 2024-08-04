// SPDX-License-Identifier: MIT

// Version
pragma solidity  ^0.8.4;

// Importar un Smart Contract desde OpenZeppelin
import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";

// Declaracion del Smart Contract
contract FirstContract is ERC721 {

    // Direccion propietario
    address public owner;

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        owner = msg.sender;
    }
}