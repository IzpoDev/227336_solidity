// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";


contract Console { 

    uint256 public cantidad = 295856;
    //event Debug(string mensaje, address invocador);

    function consultarCantidad()public returns (uint256) {
        
        console.log("Coonsultado por: " , msg.sender);
       // emit Debug("Consutado por :", msg.sender);
        return cantidad;
    }


}