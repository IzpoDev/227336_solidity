// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts@4.9.3/utils/Counters.sol";


contract Eventos {
    uint256 private cantidad = 10;

    event eventocambiarCantidad(address invocador, uint256 cantidad);



    constructor(uint256 _valor){
       cantidad = _valor;
    }

    function cambiarCantidad(uint256 _cantidad) public {
        cantidad = _cantidad;
        emit eventocambiarCantidad(msg.sender, _cantidad);
    }

    function obtenerCantidad() public view returns (uint256) {
        return cantidad;
    }
}

