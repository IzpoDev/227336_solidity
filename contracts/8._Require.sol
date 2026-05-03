// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Require { 

    uint256 public numero = 295856;
    address private propietario;

    constructor(){
        propietario = msg.sender;
    }
    function cambiarNumero(uint256 _num ) public {
        //require(msg.sender == propietario, "No eres Propietario");
        require(numero < _num, "El numero ingresado no es mayor que el numero actual");
        numero = _num;
    }
    function obtenerNumero() public view returns(uint256) {
        return numero;
    }
}