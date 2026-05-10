// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract CompArray { 
//Este es un array de numeros
   uint256[] public numeros;

   struct Alumno {
    string nombre;
    uint edad;
   }
   Alumno[] private alumnos;

    function agregarNumero(uint256 _numero) public {
        numeros.push(_numero);
    }
    /*function obtenerNumero(uint256 _indice) public view returns (uint256) {
        return numeros[_indice];
    }*/
    function obtenerNumeros() public view returns(uint256[] memory) {
        return numeros;
    }
    function obtenerTamanioArray() public view returns(uint256){
        return numeros.length;
    }

    //Para Arreglo
    function agregarAlumno(string memory _nombre, uint _edad) public {
        alumnos.push(Alumno(_nombre, _edad));
    }

    function mostrarAlumno(uint256 i) public view returns(string memory nombre, uint edad){
        return (alumnos[i].nombre, alumnos[i].edad);
    }
}