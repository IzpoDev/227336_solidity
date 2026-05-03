// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Require { 

    uint256 private fondos = 295856;
    address private owner;

    constructor(){
        owner = msg.sender;
    }

    modifier isOwner(){
        require(msg.sender == owner, "No eres propietario");
        _;
    }

     modifier notCero(){
        require(fondos > 0, "Fondo en cero");
        _;
    }

    function depositarfondos(uint256 monto) public{
        fondos +=monto;
    }

    function retirarFondos(uint256 monto) public isOwner notCero{
        //require(msg.sender == owner, "No eres propietario");
        require(monto<fondos, "Saldo insuficiente");
        fondos-=monto;
    }
    function limpiarFondos() public isOwner notCero{
        //require(msg.sender == owner, "No eres propietario");
        fondos=0;
    }

    function consultarFondo () public view returns (uint256) {
        return fondos;
    }

 }