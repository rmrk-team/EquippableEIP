// SPDX-License-Identifier: CC0-1.0

pragma solidity ^0.8.16;

import "../BaseStorage.sol";

contract BaseStorageMock is BaseStorage {
    constructor(string memory metadataURI, string memory type_)
        BaseStorage(metadataURI, type_)
    {}

    function addPart(IntakeStruct calldata intakeStruct) external {
        _addPart(intakeStruct);
    }

    function addPartList(IntakeStruct[] calldata intakeStructs) external {
        _addPartList(intakeStructs);
    }

    function addEquippableAddresses(
        uint64 partId,
        address[] calldata equippableAddresses
    ) external {
        _addEquippableAddresses(partId, equippableAddresses);
    }

    function setEquippableAddresses(
        uint64 partId,
        address[] calldata equippableAddresses
    ) external {
        _setEquippableAddresses(partId, equippableAddresses);
    }

    function setEquippableToAll(uint64 partId) external {
        _setEquippableToAll(partId);
    }

    function resetEquippableAddresses(uint64 partId) external {
        _resetEquippableAddresses(partId);
    }
}
