// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract SimpleStorage {
    uint256 public storedData;

    // Evento para registrar el cambio de almacenamiento
    event DataStored(uint256 data);

    // Constructor para inicializar el valor almacenado
    constructor(uint256 initialValue) {
        storedData = initialValue;
        emit DataStored(initialValue);
    }

    // Función para actualizar el valor almacenado
    function set(uint256 x) public {
        storedData = x;
        emit DataStored(x);
    }

    // Función para obtener el valor almacenado
    function get() public view returns (uint256) {
        return storedData;
    }
}
