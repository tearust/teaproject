# TEA Project’s State Machine

## How TEA Handles State Changes
In a typical blockchain, the default status of nodes in the network is untrusted. This lack of trust ends up being an expensive design decision for traditional blockchains. In blockchains like Bitcoin and Ethereum where there's no trust among nodes, every node will need to reproduce all states since the beginning genesis block. So we can say that one consequence of traditional blockchains’ lack of trust is that the block size grows larger over time (as it needs to store all transactions that have ever occurred on the chain), which has an associated drag on transaction speed.

The TEA Project can quickly sync up its nodes through the trust built into its design. This conceptually is a major difference it has with traditional blockchains.

Because the onboard TPM chips of mining nodes allow attestation to be run on them, they can be guaranteed to be trustworthy and don’t need to sync up a historical ledger of all previous transactions. The TEA Project’s state machine only needs to store the resulting state change of transactions in RAM and not the transaction itself. Once all nodes are trustable, any node can get the latest state from a nearby node’s RAM. Syncing up to the latest state through reading a nearby node’s RAM is a quicker process than reconstructing the current state by recomputing and verifying the entire history from the very beginning.

In the TEA Project:

- Transactions are processed with the resulting state change stored in the RAM memory residing in the enclaves of the state machine mining nodes.
- Only state machine nodes run the strong consistency state machine (including the SQL database instance).
- Every state machine node will have the same copy of the state in its memory.

All new transactions are already ordered through our use of GPS satellites (Proof of Time). Time can be proven accurate as the TPM chip onboard our layer-2 mining nodes helps ensure that the GPS module’s timing hasn’t been altered. Most importantly, our strong consistency state machine that runs through state machine mining nodes doesn’t need any consensus as there are no new blocks to wait for. Instead of blocks, new transactions land on a [conveyor](./conveyor.md) belt, and eventually everyone ends up with the same state. The TEA Project’s state machine functions just like a decentralized database that developers can use.

There are major benefits to TEA’s state machine and how it uses time as a root of trust.

1. The TEA state machine updates continuously because there’s no block. There’s no need to wait every few seconds to get the consensus of all other nodes. All nodes have agreed on the time source from the atomic clock of GPS satellites.
2. A new node joining the network doesn’t need to sync up from the very beginning of the genesis block. It just loads the current state from any nearby trusted state machine. The trust comes from the hardware and blockchain (layer-1) certification, not from self-verification from the block history, which means that syncing takes almost no time.
