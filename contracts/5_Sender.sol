// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts@4.9.3/utils/Counters.sol";


contract Sender { 
    address public cuentaInicial;
    uint256 public cantidad;

    constructor(uint256 _valor){
        cuentaInicial = msg.sender;
        cantidad = _valor;
    
    }
    function obtenerCantidad()public view returns (uint256) {
        return cantidad;
    }


}