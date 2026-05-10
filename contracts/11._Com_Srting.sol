// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.8.2 <0.9.0;

contract Complejo { 
    string private saludo = "Hola";

    function cambiarSaludo(string memory texto) public {
        saludo = texto;
    }


    function saludar() public view returns (string memory){
        return saludo;
    }
    function sumarSaludo(string memory texto) public{
        saludo = string.concat(saludo, texto);
    }


    //bucle for
    function saludarTodos(string[] memory nombres) public view returns(string memory){
        string memory resultado = "";
        for (uint i =0 ; i < nombres.length ; i++){
            resultado = string.concat(resultado, saludo, nombres[i]);
            if (i< nombres.length - 1){
                resultado = string.concat(resultado, ", ");
            }

        }
        return resultado;
    }
 }