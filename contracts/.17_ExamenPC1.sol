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


}
