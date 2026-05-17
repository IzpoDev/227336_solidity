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

    uint256 public cantidad;

    mapping(uint256 => Elemento) public elementos;


    modifier logInvocador() {
        console.log("Ejecutado por: 000227336 - Fabricio Adrian Ruiz Ponce");
        _;
    }


    constructor() logInvocador {
    }

    address public dirContrato = 0x86cA07C6D491Ad7A535c26c5e35442f3e26e8497;

    function agregarElementoTienda(uint256 _id, string memory _nombre, uint256 _costo) public logInvocador {
        require(elementos[_id].id != _id, "Elemento con ese ID ya existe");
        require(_costo > 0, "El costo debe ser mayor a cero");

    
        elementos[_id] = Elemento(_id, _nombre, _costo, true);
    
        cantidad++;
    }
   function contarElementosTienda() public view logInvocador returns (uint256) {
        return cantidad;
    }

    function inactivarElementoTienda(uint256 _id) public logInvocador {
        require(elementos[_id].id == _id, "El ID ingresado no existe");
        elementos[_id].estado = false;
    }

    //Como mi ultimo digito termina en 7 me toca pintar el elemento
    function pintarElementosActivos(uint256[] memory _listaIds) public view logInvocador {
        for (uint256 i = 0; i < _listaIds.length; i++) {
            uint256 idActual = _listaIds[i];
            if (elementos[idActual].estado == true && elementos[idActual].id == idActual) {
                console.log("Elemento activo: ", elementos[idActual].id, elementos[idActual].nombre);
            }
        }
    }
}
