# TEA Project's Technical Principles


{% embed url="https://youtu.be/fM5XF-OE7Vc?si=krIyOfsVG1CBHi0_&t=119" %}


## Two principles: TEA = Trusted Execution and Attestation

1.  **Trusted Execution** comes from protected enclaves where app logic can run while being protected by hardware security modules. All TEA Project TApps run inside of these protected enclaves. Neither the app developer nor the miners have any control over the apps nor can they extract any data from the running enclaves.  
2.  **Trusted Attestation** refers to the process whereby the network nodes run reports on each other to ensure mining hardware running on the TEA network hasn't been tampered with. Once trusted status is attained, these nodes can run on TEA's compute layer at cloud computing speeds without worrying about traditional consensus.  

## Transaction Consensus Using Time

We say that the TEA Project has three roots of trust: hardware, blockchain, and time. We've already seen how hardware security modules and blockchain can create a trustable computing environment through remote attestation and trusted enclaves. This provides a scalable and trustable application execution tier for TApps, but we also need a data tier to track TApp state changes and transaction accounting.

The TEA Project has two state categories:

### 1. A strong-consistency state machine based on Proof of Time

The first state category, based on Proof of Time, is for transactions requiring strong consistency, such as those involving funds and accounting. Leveraging timestamps from time stamps from navigation satellites monitored by hardware attestation, our strong-consistency state machine achieves continuous state updates with minimal synchronization cost. Its crucial  task is ensuring the consistency of transaction sequence across all replicas, relying on accurate time from the atomic clock of GPS satellites.

The reported time is acknowledged under the supervision of trusted HSMs (e.g., hardware with TPM chips) and serves as the basis for transaction timestamps used to order the transactions. To ensure most nodes synchronize to a consistent state, the TEA Project’s state machine requires a short waiting queue due to network latency. As time is stable on our planet, each node can achieve strong consistency using our time-based consensus, trusting the timestamps of the transactions.

{% hint style="info" %}
At the time of this document is written, the only supported trusted hardware is [Amazon Nitro](https://aws.amazon.com/ec2/nitro/). More supported hardware types will be added in the future. 
{% endhint %}

### 2. An eventually consistent CRDT database built on OrbitDB that can be used ad hoc by TApps

The other state category is a CRDT database that allows for short-term inconsistencies in the business logic of TApps. The TEA Project utilizes OrbitDB databases built on top of IPFS for these transactions. CRDT stands for Conflict-Free Replicated Data Type, enabling conflict-free mergers between different replications before achieving network-wide consistency. Most TApps can tolerate short-term inconsistencies to achieve decentralization and efficiency. A classic example of a traditional cloud app dealing with this issue gracefully is Google Docs when it smoothly merges edits from multiple simultaneous users.

Using time as a source of truth enables the TEA Project to synchronize the state between all its state machine nodes without resolving complicated consensus problem. This state machine also includes an embedded **SQL instance,** allowing more complex apps requiring a database to be built on the TEA platform.

{% hint style="info" %}
The embedded SQL database used in TEA Project is [GlueSQL](https://github.com/gluesql/gluesql)
{% endhint %}

## TEA Application (TApp) architecture
TEA Project supports multiple types of Web3 applications

### Three tiers application architecture

The TEA Project aims to become an ideal onboarding point for developers looking to deploy to the decentralized web. As an infrastructure provider for web3, we designed our ecosystem to look very familiar to developers who will appreciate the straightforward 3-tier architecture that’s similar to cloud computing.

- The **front-end tier** for TEA decentralized applications utilizes IPFS to host its assets. The TEA Project is agnostic towards the front-end the developer wishes to use (JavaScript, HTML, CSS, etc.).
- The **server tier** manages dev code compiled to WASM, allowing developers to use their existing programming languages and set WASM as the output target.
- The **database tier** is managed according to the developer's needs - NoSQL data is sent to IPFS as governed by CML hosting nodes, while relationship data is stored in GlueSQL as governed by the state maintainer nodes.

We aim to establish the TEA Project as the preferred development platform for developers entering the web3 space. We are confident that the simplicity of our tech stack will attract developers, eliminating the need to learn new languages or blockchain concepts. This allows them to leverage the advantages of decentralization and data privacy offered by Web3 while deploying within a 3-tier architecture they are already familiar with.

### Peer to peer application architecture

Besides typical three-tier applications, peer-to-peer applications are popular in the Web3 world. These applications are designed to be fully self-contained, which means almost all logic runs inside the client as a so-called "protocol". Therefore, they involve very little or zero server-side support. TEA Project fully supports this type of new Web3-oriented application architecture. TEA Project has integrated the **payment channel** protocol, which is similar to BTC's **Lightning Network**. Use WebRTC-based  [[TApp-TEA-Party|TEA Party example]] as an example, the only two server-involved places the host peer or guests' peers are 1. signaling (peers discovery) 2. payment channel setup & settlement. All the video/audio data is transferred between the host peer and guests' peers directly. In case the TEA Party hosting node is accidentally down during the call, none of the peers will notice, and their payment won't be affected.

### Realtime collaborative application architecture

Real-time collaborative applications are similar to the three-tier architecture but require socket connections between the server and peers so that all peers can receive real-time updates on the latest state. This type of application is most commonly seen as multiplayer games, collaborative document editing tools, etc. Because the state of the application is constantly updated and requires pushing updates to the client peers in real-time. Traditional three-tiers or blockchain can hardly handle. TEA Project has a specially designed protocol to deal with this situation:
- The hosting node (where the app server logic runs) maintains a real-time, instantly updating state that syncs with all client peers in real-time.
- The state machine nodes (which maintain the consensus of the ledger) sync state with hosting nodes periodically with a slight delay to compensate for proof-of-time consensus. Final settlement transactions are handled by the state machine after the slight delay. This is an acceptable compromise because final settlements won't occur in real-time; they usually happen when a user tops up (joins) or withdraws (leaves).

{% hint style="info" %}
This protocol is under development (Dec 2023). 
{% endhint %}

## WASM

In the TEA Project, dApps run WebAssembly (Wasm) code within the hardware-protected enclaves of the compute nodes. The use of Wasm in TEA allows developers to utilize their preferred programming language, simplifying the deployment of apps to web3 through the TEA Project. Furthermore, developers familiar with the front-end / back-end / database tiers of cloud computing will recognize these components in the TEA Project. While TEA Project TApps adhere to the same three-tier architecture common in cloud computing (presentation tier, app tier, and database tier), they operate fully decentralized.

Applications can achieve optimal performance on the TEA Project's compute layer because, from the app's perspective, it mirrors a standard three-tier cloud computing architecture. Developers do not require specialized knowledge of blockchain or consensus algorithms to benefit from decentralization and security within the TEA Project's 2-layer blockchain. They only need to set WebAssembly as their code compilation target while continuing to use their preferred programming languages.

## Relationship with blockchains

Unlike typical Layer 2 solutions built on top of blockchains, TEA Project does not "roll-up" state to Layer 1. Instead, TEA Project stores its own state within the hardware enclaves between state machine nodes to enhance security and confidentiality. It doesn't bind to any specific blockchain as Layer 1 but relies on the blockchain to store trusted data and crucial financial transactions for security. Currently, Ethereum serves as the Layer 1 for TEA Project.

TEA Project relies on Ethereum for the following purposes:

- Top-up (deposit) or withdraw ERC20 assets to/from the Ethereum chain
- TEA token is an ERC20 token, and CML is an ERC721 token, both residing on the Ethereum chain
- Smart contracts are employed to enforce miners' compliance with SLA and security requirements

Other blockchains, such as BTC, DOT, etc., are planned to be added as alternative Layer 1 solutions.

