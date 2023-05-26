// SPDX-License-Identifier: MIT
//  _____     _ _         _         _
// |_   _|_ _(_) |_____  | |   __ _| |__ ___
//   | |/ _` | | / / _ \ | |__/ _` | '_ (_-<
//   |_|\__,_|_|_\_\___/ |____\__,_|_.__/__/

pragma solidity ^0.8.18;

import {TaikoData} from "./TaikoData.sol";

abstract contract TaikoEvents {
    // The following events must match the definitions in corresponding L1 libraries.
    event BlockProposed(uint256 indexed id, TaikoData.BlockMetadata meta, uint64 blockFee);

    event BlockProven(
        uint256 indexed id,
        bytes32 parentHash,
        bytes32 blockHash,
        bytes32 signalRoot,
        address prover,
        uint32 parentGasUsed
    );

    event BlockVerified(uint256 indexed id, bytes32 blockHash, uint64 reward);

    event EthDeposited(TaikoData.EthDeposit deposit);

    event Bid(
        uint256 batchId,
        address bidder,
        uint256 bidAt,
        uint256 deposit,
        uint256 minFeePerGas,
        uint256 weight,
        uint256 auctionStartedAt,
        uint256 feePerGasInWei
    );

    event BidDepositRefunded(
        uint256 indexed id, address claimer, uint256 refundedAt, uint256 refund
    );
}
