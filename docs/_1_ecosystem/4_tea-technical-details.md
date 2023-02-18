# TEA Project's Technical Details

## TEA = Trusted Execution and Attestation

Any system with a high degree of anonymity and decentralization needs trust. The TEA Project leverages existing hardware security modules to achieve a secure computing environment that's both trustable and scalable. To this end, TEA Project miners are economically rewarded for running nodes that, through remote attestation, ensures that any TEA mining nodes hosting apps on the network haven't been tampered with. These attestations query the information stored inside each mining computer's hardware security module, and the reports are stored directly on Ethereum's blockchain.

## Remote attestation

Multiple nodes will conduct **remote attestations** on any specific node before deciding if it's trustable. Once a node has successfully passed attestation, then these mining nodes gain two significant trusted computing capabilities:

1. All computations carried out within its hardware-protected enclave are trustable. The TEA Project's premise relative to TPM-protected mining hardware is simple: if we can trust the hardware integrity of the node, then we can trust the computational result. These hardware enclaves also ensure privacy for both the developer's code and the user's data.
1. The trustability of nodes is kept as Proof of Trust (PoT) data on the layer-1 blockchain. Because these nodes are trustable, they can run on the TEA Project's layer-2 without needing BFT (because they're already trustable.)

Let's summarize the above two points as follows:

1. **Trusted Execution** comes from protected enclaves where app logic can run while being protected by hardware security modules. All TEA Project TApps run inside of these protected enclaves. Nobody (which includes the app developer and the miners) has any control of the apps nor can they extract any data from the running enclaves.
1. **Trusted Attestation** refers to the process whereby the network nodes run reports on each other to ensure mining hardware running on the TEA network hasn't been tampered with. Once trusted status is attained, these nodes can run on TEA's layer-2 at cloud computing speeds without having to worry about (slow) BFT-consensus.

## Transaction Consensus Using Time

We say that the TEA Project has three roots of trust: hardware, blockchain, and time. We've already seen how hardware security modules and blockchain can create a trustable computing environment through remote attestation and trusted enclaves. This provides a scalable and trustable application execution tier for TApps, but we also need a data tier to track TApp state changes and transaction accounting.

The TEA Project has two state categories:

### 1. A strong-consistency state machine based on Proof of Time

The first state category based on Proof of Time is for transactions requiring strong consistency, which governs transactions involving funds and accounting. Using the time stamps from navigation satellites under watch of hardware attestation, our strong consistency state machine can achieve continuous state updates at a small synchronization cost. Its most crucial task is ensuring that the transaction sequence is consistent across all replicas. We do this by relying on the accurate time provided by the atomic clock of GPS satellites.

The reported time is recognized under the supervision of trusted TPM chips and used as the basis for the final ranking of all replicas. It's not necessary for all nodes to periodically reach a consensus on the latest block. But to ensure that most replicas can be synchronized to a consistent state, the TEA Project’s state machine requires a short waiting queue due to network latency. Since time is stable in our universe, it follows that each replica can achieve strong consistency using non-BFT consensus as the possibility of Byzantine faults has already been handled by the layer-1 blockchain.

## 2. An eventually consistent CRDT database built on OrbitDB that can be used ad hoc by TApps

The other state category is a CRDT database that allows for short-term inconsistencies in the business logic of TApps. The TEA Project uses OrbitDB databases built on top of IPFS for these transactions. CRDT stands for conflict-free replication data type, which allows conflict-free mergers between different replications before ultimately achieving network-wide consistency. Most TApps can tolerate short-term inconsistencies to achieve both decentralization and efficiency. A typical example of a traditional cloud app that deals with this issue gracefully is Google Docs when it gracefully merges the edits of multiple simultaneous users.

Using time as a source of truth allows the TEA Project to sync the state machine between all of its layer-2 nodes without resorting to complicated consensus algorithms. This state machine also includes an embedded SQL-instance which allows more complex apps requiring a database to be built on the TEA platform.

**Putting It All Together**

The TEA Project aims to become an ideal onboarding point for developers looking to deploy to Web3. As an infrastructure provider for Web3, we designed our ecosystem to look very familiar to developers who will appreciate the straightforward 3-tier architecture that’s similar to cloud computing.

* The **front-end** for TEA decentralized applications uses IPFS to host its assets. The TEA Project is agnostic towards whatever front-end the developer wishes to use (Javascript, HTML, CSS, etc.)
* The **server layer** handles dev code compiled to WASM, which implies that developers can use their existing programming languages and set WASM as the output target.
* The **database layer** is handled according to the developer's needs - NoSQL data is sent to IPFS as governed by CML hosting nodes, while relationship data is stored in GlueSQL as governed by the state maintainer nodes.

We look forward to making the TEA Project the preferred development platform for developers looking to enter Web3. We believe the simplicity of our tech stack will be inviting to developers who won’t have to learn new languages or new blockchain concepts. They can enjoy the benefits of decentralization and data privacy that Web3 offers while deploying to a familiar 3-tier architecture they're already familiar with.
