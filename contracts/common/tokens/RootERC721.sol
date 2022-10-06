//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;

import {ERC721Full} from "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";

contract RootERC721 is ERC721Full {
    constructor(string memory name, string memory symbol) //removed public
        ERC721Full(name, symbol)
    {}

    function mint(uint256 tokenId) public {
        _mint(msg.sender, tokenId);
    }
}
