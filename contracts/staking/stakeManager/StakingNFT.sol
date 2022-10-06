//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";
import {Ownable} from "openzeppelin-solidity/contracts/ownership/Ownable.sol";


contract StakingNFT is ERC721Full, Ownable {
    constructor(string memory name, string memory symbol)
        ERC721Full(name, symbol)
    { //removed public
        // solhint-disable-previous-line no-empty-blocks
    }

    function mint(address to, uint256 tokenId) public onlyOwner {
        require(
            balanceOf(to) == 0,
            "Validators MUST NOT own multiple stake position"
        );
        _mint(to, tokenId);
    }

    function burn(uint256 tokenId) public onlyOwner {
        _burn(tokenId);
    }

    function _transferFrom(address from, address to, uint256 tokenId) internal {
        require(
            balanceOf(to) == 0,
            "Validators MUST NOT own multiple stake position"
        );
        super._transferFrom(from, to, tokenId);
    }
}
