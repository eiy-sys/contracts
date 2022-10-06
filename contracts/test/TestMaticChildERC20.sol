//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;

import {MRC20} from "../child/MRC20.sol";

contract TestMRC20 is MRC20 {
    fallback() external payable {} //changed function to fallback
}
