---
eip: eip-xxxx
title: Equippable
description: 
author: Bruno Škvorc (@Swader), Cicada (@CicadaNCR), Steven Pineda (@steven2308), Stevan Bogosavljevic (@stevyhacker), Jan Turk (@ThunderDeliverer)
discussions-to:
status: Draft
type: Standards Track
category: ERC
created: 2022-12-20
requires: 165, 721
---

## Abstract



## Motivation



## Specification

The key words “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”, “RECOMMENDED”, “MAY”, and “OPTIONAL” in this document are to be interpreted as described in RFC 2119.

```solidity
/// @title EIP-X Title
/// @dev See https://eips.ethereum.org/EIPS/eip-x
/// @dev Note: the ERC-165 identifier for this interface is 0x.

pragma solidity ^0.8.16;


```

## Rationale

Designing the proposal, we considered the following questions:

1. **X**

x

## Backwards Compatibility

The Equippable token standard has been made compatible with [EIP-721](./eip-721.md) in order to take advantage of the robust tooling available for implementations of EIP-721 and to ensure compatibility with existing EIP-721 infrastructure.

## Test Cases

Tests are included in [`equippable.ts`](../assets/eip-xxxx/test/equippable.ts).

To run them in terminal, you can use the following commands:

```
cd ../assets/eip-xxxx
npm install
npx hardhat test
```

## Reference Implementation

See [`EquippableToken.sol`](../assets/eip-xxxx/contracts/EquippableToken.sol).


## Security Considerations

The same security considerations as with [EIP-721](./eip-721.md) apply: hidden logic may be present in any of the functions, including burn, add resource, accept resource, and more.

Caution is advised when dealing with non-audited contracts.

## Copyright

Copyright and related rights waived via [CC0](../LICENSE.md).