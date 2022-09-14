pragma solidity ^0.8.7;
//interface for parent contract of any child token

interface IParentToken {
    function beforeTransfer(address sender, address to, uint256 value)
        external
        returns (bool);
}
