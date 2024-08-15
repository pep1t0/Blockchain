// SPDX-License-dentifier: MIT
pragma solidity ^0.8.4;

// Importacion de Smart Contracts de OpenZeppelin
import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.5.0/utils/Counters.sol";

contract erc721 is ERC721{
    
    // Crear un contador para el n�mero de NFT's
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;  // Crea un contador para el n�mero de NFT's


    // Crear una tupla para almacenar información sobre cada NFT 
    struct NFT {  // Estructura para almacenar información sobre cada NFT 
        address owner;  // Dirección del propietario del NFT 
        string tokenURI;  // URI de la imagen del NFT 
    }  // Fin del contrato

    constructor (string memory _name, string memory _symbol) ERC721(_name, _symbol) {}

    function sendNFT(address _account) public {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _safeMint(_account, newItemId);

    }
    
}