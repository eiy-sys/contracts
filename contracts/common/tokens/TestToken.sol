//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";

contract TestToken is ERC20Mintable {
    // detailed ERC20
    string public name;
    string public symbol;
    uint8 public decimals = 18;

    constructor(string memory _name, string memory _symbol) { //remove public
        name = _name;
        symbol = _symbol;

        uint256 value = 10**10 * (10**18);
        mint(msg.sender, value);
    }
}
