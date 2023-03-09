# TEA's 3 Roots of Trust

TEA Project's three roots of trust are:

1. Blockchain.
1. Trusted hardware.
1. Time. 

Let's dive deeper into each of these roots of trust to better understand how the TEA Project uses each level of trust to build up its compute platform.

## 1. Blockchain

Traditional blockchains use two roots of trust: **consensus** and **cryptography**. But their reliance on consensus makes it impossible for these blockchains to scale and meet the needs of rich applications. The TEA Project uses the Ethereum blockchain as one of its roots of trust. Besides storing the trust status of each of its compute nodes, it helps enforce token incentives to ensure good behavior among node runners.

## 2. Trusted Hardware

TEA's second root of trust comes from the miners' hardware security modules (HSM) that generate PoT data. Peer-to-peer remote attestation is performed on the compute nodes' trust data in order to reach consensus on the trustworthiness of the nodes. TEA doesn't use consensus to verify the result of the dApp's code, but the execution environment where the code runs.

## 3. Time

TEA’s state machine orders transactions using timestamps and a Proof of Time algorithm which utilizes atomic clocks from GPS satellites. The Proof of Time consensus rule ensures that all nodes sort their transactions by the timestamps, which are trustable as governed by the HSM that protect each reporting node's hardware. Because of this consensus logic, geographically distributed nodes will all reach the same state regarding the ordering of transactions.

Using trusted time to order transactions allows TEA to run dApps that rival the speeds of traditional cloud computing. TEA is an ideal platform for any app requiring data security and privacy while remaining censorship-resistant.
