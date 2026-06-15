// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BallenitaNFT is ERC721, Ownable { 
    uint256 private _contadorId = 1;

    constructor(string memory name, string memory simbol)
        ERC721(name, simbol)
        Ownable(msg.sender)
    {

    }

    struct Poster {
        uint256 id;
        string nombre;
        uint256 level;
        uint256 rareza;
    }

    mapping (uint256 => Poster) private posters;

    function mint(address to, string memory _nombre,uint256 level, uint256 rareza) public onlyOwner {
        uint idPoster = _contadorId;
        posters[idPoster] = Poster (idPoster, _nombre, level, rareza);

        _safeMint(to, _contadorId);
        _contadorId++;
    }
    function verPoster(uint256 tokenId) public view returns(uint256, string memory, uint256, uint256){
        Poster memory poster = posters[tokenId];
        return (poster.id, poster.nombre, poster.level, poster.rareza );
    }

}