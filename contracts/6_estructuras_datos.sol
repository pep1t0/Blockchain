// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract data_structures {

    struct Cliente {
        uint256 id;
        string name;
        string email;
    }

    // Variable tipo cliente
    Cliente public cliente_1 = Cliente(1, "Daniel", "dani@gmail.com");

    // Array de uints de longitud fija
    uint256 [5] public lista_uints = [1,2,3,4,5];

    // Array dinamico de uints
    uint256 [] lista_dinamica_uints;

    // Array dinamico de tipo Cliente
    Cliente [] public lista_dinamica_clientes;

    function array_modificador (uint256 _id, string memory _name, string memory _email) public {
        Cliente memory cliente_aleatorio = Cliente(_id, _name, _email);
        lista_dinamica_clientes.push(cliente_aleatorio);
    } 

    // MAppings
    mapping (address => uint256) public address_uint;
    mapping (string => uint256 []) public string_listUnits;
    mapping (address => Cliente) public address_dataStructure;

    // Asignar un numero a una direccion
    function assignNumer (uint256 _number) public {
        address_uint[msg.sender] = _number;
    }

    function assignList (string memory _name, uint256 _number) public {
        string_listUnits[_name].push(_number); 
    }

    function assignDataStructure(uint _id, string memory _name, string memory _email) public {
        address_dataStructure[msg.sender] = Cliente(_id, _name, _email);
    }
}
