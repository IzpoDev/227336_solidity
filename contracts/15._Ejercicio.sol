// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Ejercicio { 
    struct Mensaje {
        address from;     
        address to;        
        string contenido;  
        uint256 timestamp; 
    }

    Mensaje[] public historialMensajes;

    event NuevoMensaje(address from, address to, string contenido, uint256 fecha);
    
    function enviarMensaje(address _to, string memory _contenido) public {

        Mensaje memory mensajeEnviado = Mensaje(msg.sender, _to, _contenido, block.timestamp);
        historialMensajes.push(mensajeEnviado);
        emit NuevoMensaje(msg.sender, _to, _contenido, block.timestamp);

    }
}