//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;

import {UpgradableProxy} from "../../common/misc/UpgradableProxy.sol";
import {Registry} from "../../common/Registry.sol";

contract ValidatorShareProxy is UpgradableProxy {
    constructor(address _registry) UpgradableProxy(_registry) {} //removed public

    function loadImplementation() internal view returns (address) {
        return Registry(super.loadImplementation()).getValidatorShareAddress();
    }
}
