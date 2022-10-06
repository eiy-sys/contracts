//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;

import {RootChainStorage} from "./RootChainStorage.sol";
import {Proxy} from "../common/misc/Proxy.sol";
import {Registry} from "../common/Registry.sol";

contract RootChainProxy is Proxy, RootChainStorage {
  constructor(address _proxyTo, address _registry, string memory _heimdallId)
    Proxy(_proxyTo)
  {//removed public
      registry = Registry(_registry);
    heimdallId = keccak256(abi.encodePacked(_heimdallId));
  }
}
