//SPDX-License-Identifier:MIT
pragma solidity 0.8.17;

abstract contract IWithdrawManager {//made it abstract
    function createExitQueue(address token) external virtual; //made it virtual

    function verifyInclusion(
        bytes calldata data,
        uint8 offset,
        bool verifyTxInclusion
    ) external virtual view returns (uint256 age); //made it virtual

    function addExitToQueue(
        address exitor,
        address childToken,
        address rootToken,
        uint256 exitAmountOrTokenId,
        bytes32 txHash,
        bool isRegularExit,
        uint256 priority
    ) external virtual; //made it virtual

    function addInput(
        uint256 exitId,
        uint256 age,
        address utxoOwner,
        address token
    ) external virtual; //made it virtual

    function challengeExit(
        uint256 exitId,
        uint256 inputId,
        bytes calldata challengeData,
        address adjudicatorPredicate
    ) external virtual; //made it virtual
}
