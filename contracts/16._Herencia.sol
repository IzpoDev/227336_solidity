// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.8.2 <0.9.0;

contract Animal {
    string public especie;

    constructor(string memory _especie){
        especie = _especie;
    }

    function hacerSonido()public pure virtual returns (string memory){
        return "aah";
    }

    function obtenerInfo() public view virtual returns(string memory){
        return string.concat("Soy un ", especie);
    }

}
contract Perro is Animal{
    constructor () Animal("Perro"){
    }
    function hacerSonido() public pure override returns (string memory){
        return "Gua Gua";
    }
    function obtenerInfo() public view override returns(string memory){
        return string.concat("Soy un ", especie, " y hago ", hacerSonido());
    }
}

contract Gato is Animal{
    constructor () Animal("Gato"){
    }
    function hacerSonido() public pure override returns (string memory){
        return "Miu Miu";
    }
    function obtenerInfo() public view override returns(string memory){
        return string.concat("Soy un ", especie, " y hago ", hacerSonido());
    }
    function ronronear() public pure returns(string memory){
        return "rrrr";
    }
}

contract PetStore {

    Animal[] public animales;
    function agregarPerro(address _direccion) public {
        //Perro p = new Perro();
        animales.push(Perro(_direccion));
    }
    function agregarGato() public {
        Gato g = new Gato();
        animales.push(g);
    }
    function getCantidadAnimales() public view returns(uint){
        return animales.length;
    }
    function sonidoAnimal(uint256 indice) public view returns(string memory){
        return animales[indice].hacerSonido();
    }
    function infoAnimal(uint256 indice) public view returns(string memory){
        return animales[indice].obtenerInfo();
    }
}