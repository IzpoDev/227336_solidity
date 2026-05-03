// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts@4.9.3/utils/Counters.sol";


contract Eventos {

    uint256 private cantidad = 10;
    uint256 private valorAnt;

    event eventocambiarCantidad(address invocador, uint256 cantidad, uint256 valorAnt);



    constructor(uint256 _valor){
        valorAnt = cantidad;
       cantidad = _valor;
    }

    function cambiarCantidad(uint256 _cantidad) public {
        valorAnt = cantidad;
        cantidad = _cantidad;
        emit eventocambiarCantidad(msg.sender, _cantidad, valorAnt);
    }

    function obtenerCantidad() public view returns (uint256) {
        return cantidad;
    }
}

