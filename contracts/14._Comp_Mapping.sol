// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract CompMapping { 
    uint256 secuencial = 100;
    //struct
    struct Empleado {
        string nombre;
        uint edad;
    }
    //Clave Valor
    mapping(uint => Empleado) public empleados;

    function addEmpleado(uint256 id, string memory _nombre, uint _edad) public {
        empleados[id] = Empleado(_nombre, _edad);
    }
    function addEmpleadosSecuencial(string memory _nombre, uint _edad) public {
        empleados[secuencial] = Empleado(_nombre, _edad);
        secuencial++;
    }
    function getEmpleado(uint256 i) public view returns(string memory, uint) {
        return (empleados[i].nombre, empleados[secuencial].edad);
    }

}