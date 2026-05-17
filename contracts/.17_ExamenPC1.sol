// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Tienda_000227336 {

    struct Elemento {
        uint256 id;
        string nombre;
        uint256 costo;
    }

    Elemento[] public elementos;

    constructor() {
        console.log("Ejecutado por: 000227336 - Fabricio Adrian Ruiz Ponce");
    }
    address public dirContrato = 0x86cA07C6D491Ad7A535c26c5e35442f3e26e8497;

    function agregarElementoTienda(uint256 _id, string memory _nombre, uint _costo) public {
        elementos.push(Elemento(_id, _nombre, _costo));
    }
    function contarElementosTienda() public view returns (uint256) {
        console.log("Ejecutado por: 000227336 - Fabricio Adrian Ruiz Ponce");
        return elementos.length;
    }

}
