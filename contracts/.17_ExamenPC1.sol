// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Tienda_000227336 {

    struct Elemento {
        uint256 id;
        string nombre;
        uint256 costo;
        bool estado;
    }

    Elemento[] public elementos;

    modifier logInvocador() {
        console.log("Ejecutado por: 000227336 - Fabricio Adrian Ruiz Ponce");
        _;
    }


    constructor() logInvocador {
    }

    address public dirContrato = 0x86cA07C6D491Ad7A535c26c5e35442f3e26e8497;

    function agregarElementoTienda(uint256 _id, string memory _nombre, uint _costo, bool _estado) public logInvocador {
        for (uint256 i = 0; i < elementos.length; i++) {
            require(elementos[i].id != _id, "Elemento con ese ID ya existe"); 
         }
        require(_costo > 0, "El costo debe ser mayor a cero");
        elementos.push(Elemento(_id, _nombre, _costo, _estado));
    }
    function contarElementosTienda() public view logInvocador returns (uint256) {
        console.log("Ejecutado por: 000227336 - Fabricio Adrian Ruiz Ponce");
        return elementos.length;
    }
    function inactivarElementoTienda(uint _posicion) public logInvocador {
        require(_posicion < elementos.length, "Posicion fuera de rango de elementos de la tienda");
        elementos[_posicion].estado = false;
    }
    //Como mi ultimo dihgito termina en 7 me toca pintar el eleemento
    function pintarElementosActivosTienda() public view logInvocador {
        for (uint256 i = 0; i < elementos.length; i++) {
            if (elementos[i].estado == true) {
                console.log("Elemento de tienda activo: ", elementos[i].id, elementos[i].nombre);
            }
        }
    }



}
