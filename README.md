---
eip: eip-xxxx
title: Composable NFTs utilizing equippable parts
description: 
author: Bruno Škvorc (@Swader), Cicada (@CicadaNCR), Steven Pineda (@steven2308), Stevan Bogosavljevic (@stevyhacker), Jan Turk (@ThunderDeliverer)
discussions-to:
status: Draft
type: Standards Track
category: ERC
created: 2022-12-20
requires: 165, 721, 5773, 6059
---

## Abstract

The Composable NFTs utilizing equippable parts standard extends [EIP-721](./eip-721.md) by allowing the NFTs to selectively add parts to themselves via equipping.

Tokens are able to equip the parts by cherry picking the list of parts from a Catalog for that NFT instance. Catalogs contain parts from which NFTs can be composed.

This proposal introduces two types of parts; slot type of parts and fixed type of parts. The slot type of parts allow for other NFT collections to be equipped into them, while fixed parts are full components with ther own metadata.

Equipping a part into an NFT doesn't generate a new token, but rather adds another component to be rendered when retrieving the token.

## Motivation

With NFTs being a widespread form of tokens in the Ethereum ecosystem and being used for a variety of use cases, it is time to standardize additional utility for them. Having the ability for tokens to own other tokens allows for greater utility, usability and forward compatibility.

In the four years since [EIP-721](./eip-721.md) was published, the need for additional functionality has resulted in countless extensions. This EIP improves upon EIP-721 in the following areas:

- [Composing](#composing)
- [Token progression](#token-progression)
- [Merit tracking](#merit-tracking)
- [Reducing clutter](#reducing-clutter)

### Composing

NFTs can work together to create a greater construct. Until this proposal, multiple NFTs had to be composed into a single construce. This proposal establishes a standrardized framework for composable NFTs, where a single NFT can select which parts should be a part of the whole. Composing NFTs in such a way allows for virtually umbounded customization of the base NFT. An example of this could be a movie NFT. Some parts, like credits, should be fixed. Other parts, like scenes, should be interchangeable, so that various releases (base version, extended cuts, aniversary editions,...) can be replaced.

### Token progression

As the token progresses through various stages of its existence, it can attain or be awarded various parts. This can be explained in terms of gaiming. A character could be represented by an NFT utilizing this proposal and would be able to equip gear acquired through the gameplay activities and as it progresses further in the game, better items would be available. In stead of having numerous NFTs representing the items collected through its progression, equippable parts can be unlocked and the NFT owner would be able to decide which items to equip and which to keep in the inventory (not equipped).

### Merit tracking

An equippable NFT can also be used to track merit. An example of this is academic merit. The equippable NFT in this case would represent a sort of digital protfolio of academic achievements, where the owner would be able to equip their diplommas, published articles and awards for all to see.

### Reducing clutter

Many use cases that use utility NFTs eventually award holders of the tokens with additional tokens that provide additional utility. Gaming NFTs often use other NFTs to represent items owned by the base NFT. Both of the examples can mean that, in a long term scenario, the NFT owner's wallet could contain hundredths NFTs for a single use case. Not only does this mean that the wallet is cluttered, but the interface may soon become virtaully unusable and NFTs might get burried within the wallet. By supporting NFTs outlined in this proposal use cases can only use a single NFT to track virtually unbounded utility and in turn allow the owner of the token to easily traverse owned NFTs.

A great example of this is a DAO membership NFT. As a DAO grows, it could grow into multiple factions and sub-factions which would each require its own access NFT in order to access them. An equippable base NFT would allow the access NFTs to be replaced by equippable access passes, thus reducing clutter.

## Specification

The key words “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”, “RECOMMENDED”, “MAY”, and “OPTIONAL” in this document are to be interpreted as described in RFC 2119.

```solidity
/// @title EIP-X Composable NFTs utilizing equippable parts
/// @dev See https://eips.ethereum.org/EIPS/eip-x
/// @dev Note: the ERC-165 identifier for this interface is 0x.

pragma solidity ^0.8.16;


```

## Rationale

Designing the proposal, we considered the following questions:

1. **Why are we using a Catalog in stead of supporting NFT equipping?**

If NFTs could be equipped into other NFTs the resulting composite would be unpredictable. Suche behaviour would also enforce the issue we are highlighting in the [Reducing clutter](#reducing-clutter) section.

Catalog allows for parts to be pre-verified in order to result in a composite that composes as expected.

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