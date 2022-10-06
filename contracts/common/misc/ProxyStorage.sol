//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;
import {Ownable} from "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract ProxyStorage is Ownable {
    address internal proxyTo;
}
