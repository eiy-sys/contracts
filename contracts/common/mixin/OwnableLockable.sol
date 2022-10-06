//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;
import { Lockable } from "./Lockable.sol";
import { Ownable } from "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract OwnableLockable is Lockable, Ownable {
    function lock() public onlyOwner {
        super.lock();
    }

    function unlock() public onlyOwner {
        super.unlock();
    }
}
