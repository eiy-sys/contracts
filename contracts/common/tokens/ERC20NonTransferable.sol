SPDX-License-Identifier:MIT
pragma solidity 0.8.17;

import {ERC20} from "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract ERC20NonTransferable is ERC20 {
    function _transfer(
        address from,
        address to,
        uint256 value
    ) internal {
        revert("Disabled");
    }
}
