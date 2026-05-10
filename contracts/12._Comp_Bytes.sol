// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract CompBytes { 
    bytes private datos;
    function guardarDatos(bytes memory valor) public {
        datos = valor;
    }

    function obtenerDato() public view returns (bytes memory){
        return datos;
    }
    function agregarDatos(bytes memory _valor) public {
        datos= bytes.concat(datos,_valor);
    }

    function obtenerDatoscomoString() public view returns (string memory){
        return string(datos);
    }
    function guardarDatosdesdeTExto(string memory texto) public {
        datos = bytes(texto);
    }
}