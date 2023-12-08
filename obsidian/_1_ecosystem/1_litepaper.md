# Litepaper

## How TEA Project Solves a Central Web3 Problem

Web3 architecture is a dramatic departure from what most devs are used to from web2. Unfortunately, the lack of viable web3 development frameworks has been a bottleneck for widespread deployment of decentralized apps. That's where the TEA Project comes in. Just as Ruby on Rails ushered in the web 2.0 era by allowing full-scale internet applications to be built rapidly, the TEA Project aims to provide a similar development framework for web3 that allows developers to quickly get their dApps up and running.

The current Web3 landscape sees many developers cobbling together hybrid dApps because the blockchain layer is too slow for running rich dApps. The TEA Project doesn't focus on smart contracts as they have two major limitations: 

1. They're limited in the type of algorithms they can execute.
2. They require consensus. 

The TEA Project isn't limited by use of smart contracts as part of its execution layer for dApps. Smart contracts make sense in areas such as DeFi, but they can't possibly be the basis of rich dApps that rival the speed and functionality of current centralized cloud computing applications. 

## TEA Project's Decentralized State Machine
The extent of the TEA Project's decentralization is atomized and evident at the level of its apps.  The TEA Project enables app developers to create cloud-speed decentralized apps that rely on distributed nodes instead of centralized servers for hosting. Each of these apps has all 3-tiers decentralized:

- The front-end resources (javascript, html, css) are loaded from IPFS.
- The server tier is provided by the decentralized node network of hosting miners.
- The database tier is kept by decentralized state maintainer nodes.

The complete decentralization of TEA network apps is in stark contrast to the centralized cloud apps of web2 as well as the hybrid ETH dApps that are currently prevalent. Because blockchains like Ethereum are only able to provide rudimentary server and database functions, Ethereum dApps will often use cloud hosting to fill the gap.

The need to move away from centralized hosting is another reason why the TEA Project uses a non-traditional consensus not based on blockchain. This allows TEA's compute layer to have its own state and also allows cooperation between the two layers as we don't need to rely on Eth's state machine for compute power, database services, or consensus.

## TEA Doesn't "Block"
Any decentralized system will need a way to reach consensus, a process that has unfortunately been fraught with compromises. The blockchain trilemma states that a blockchain can have two of **scalability**, **security**, or **decentralization** but not all three. The TEA Project is able to create a near-cloud speed compute infrastructure by avoiding the use of blocks for consensus.

- TEA uses three roots of trust: time, trusted hardware, and blockchain. But TEA's compute layer has its own state machine separate from the underlying blockchain it runs on top of. Because of this, we say that TEA doesn't "block" and uses a scalable non-traditional consensus on its compute layer to pave the way for high-speed dApps.
- TEA currently uses Ethereum as its main layer-1 blockchain but it can also run on top of other smart contract-capable blockchains. Because of this, we say that the TEA Project is "portable."

We should also note that when we say TEA doesn't "block," there's also another meaning to the word in addition to TEA not using blocks to reach consensus. In the TEA Project's decentralized system, no one (not even TEA Project) can block anyone from using one of our network's apps (called TApps). TEA Project's TApps are requested by end-users who use any available node to run the TApp. The TApp's CID is all that's needed and no one can block them from running the TApp. We say that TApps are unstoppable, meaning that no one can block them.

## TEA's 3 Roots of Trust
The TEA Project's uses three roots of trust to build its compute platform:

### 1. Blockchain
Traditional blockchains use two roots of trust: **consensus** and **cryptography**. But their reliance on consensus makes it impossible for these blockchains to scale and meet the needs of rich applications. The TEA Project uses the Ethereum blockchain as one of its roots of trust. The main use of the layer-1 blockchain is to enforce token incentives to ensure good behavior among node runners.

### 2. Trusted Hardware
TEA's second root of trust comes from the miners' hardware security modules (HSM) that generate PoT data. Peer-to-peer remote attestation is performed on the compute nodes' trust data in order to reach consensus on the trustworthiness of the nodes. TEA doesn't use consensus to verify the result of the dApp's code, but the execution environment where the code runs.

### 3. Time
TEA’s state machine orders transactions using timestamps and a Proof of Time algorithm which utilizes atomic clocks from GPS satellites. The Proof of Time consensus rule ensures that all nodes sort their transactions by the timestamps, which are trustable as governed by the HSM that protect each reporting node's hardware. Because of this consensus logic, geographically distributed nodes will all reach the same state regarding the ordering of transactions.

Using trusted time to order transactions allows TEA to run dApps that rival the speeds of traditional cloud computing. TEA is an ideal platform for any app requiring data security and privacy while remaining censorship-resistant.

## Decentralized Compute Using TEA's Roots of Trust

One of the enduring problems of decentralized systems is how to circumvent the slow processing speeds inherent with consensus. The TEA Project avoids slower forms of consensus through the use of three roots of trust described earlier: blockchain, trusted hardware, and time. These three roots of trust are used to create two separate consensus algorithms:

-   **Proof of Trust**: TEA’s compute layer consensus verifies the trust data from the onboard hardware security modules (HSM) of its compute nodes, with the resulting status written to the Ethereum blockchain. A central TEA premise is that if the execution environment can be trusted, then the execution result can be trusted as well.
-   **Proof of Time**: The TEA Project’s state machine runs a separate consensus based on time. TEA uses the timestamps as reported by the compute nodes’ atomic clocks (from GPS) units to order transactions on its state machine. The consensus rule is that all nodes sort the transactions by the timestamps, which are trustable as governed by the HSM that protect each reporting node's hardware. Because of this consensus logic, geographically disparate nodes will all reach the same state regarding the ordering of transactions.

It could be said that these two new consensus mechanisms are the TEA Project's main innovations that unlock a decentralized cloud-speed network for apps that require data security and censorship-resistance. By combining blockchain with IPFS, GPS and trusted hardware, the TEA Project can meet the needs of large-scale, high-frequency apps while ensuring permission-less decentralization and data privacy protection.

## The TEA Token Economy
To ensure a healthy token economy that incentivizes behavior supporting the TEA ecosystem, the TEA Project has developed three main types of tokens:

1. The **TEA** utility token.
2. The **CML** NFT that comes with mining privileges.
3. Bonding curve tokens

### 1. The TEA Utility Token
Our first token, [[_3_token/tea-tokens/README|TEA]], is a utility token with a supply of 100 million tokens (hard cap / no inflation) pre-allocated in the genesis block. TEA is also given as a reward to miners for running public services (e.g. remote attestation) on the TEA network. 

TEA has a variety of uses on the platform:

-   TEA pays for gas when performing any transaction on the network (paid to miners who run the nodes).
-   TEA is paid by consumers when using a TApp.
-   TEA can be used to purchase bonding curve tokens (explained below). 

The 100 million tokens minted at genesis will be allocated with different vesting schedules as follows:

<img width="554" alt="100M-allocation" src="https://user-images.githubusercontent.com/86096370/188247420-183894d8-1b03-4d6f-a275-dea62be519c5.png">


### 2. The CML NFT with Mining Privileges
Camellia [[_3_token/cml-tokens/README|(CML)]] is a non-fungible token (NFT) that's used by TEA miners to activate their mining machines. The CML tokens essentially act as both an ID mechanism for their mining nodes as well as an access key that allows them to mine on the TEA network. To run a node on the TEA platform, miners must associate a special NFT with their machine that acts as a mining license. The CML that is associated with a mining machine tracks that machine's features (e.g. ram and presence of graphics card) as well as behavior (e.g. uptime). This information on each CML ID is stored in the ERC-721 token’s metadata. In a scenario where the miner wishes to upgrade their hardware, moving the CML to their new machine also transfers its metadata such as its trust score. 

There are two different types of mining privileges on the TEA Project platform:

1. A hosting node which is activated by a CML (Camellia) NFT. This allows a miner to host TApps on the platform.
2. A state maintainer seat license that allows a user to run a state machine node.

Let's take a look at each of these in turn.

### 2.1 CML NFTs
A CML is an NFT with a life cycle determined randomly via algorithm. CML, also known as Camellia, has some unique properties and uses on the TEA Project platform.

- A TEA mining node can only be activated by associating a CML NFT with it.
Each CML has a lifespan associated with it (approximately 2 years). Like its Camellia name suggests, every CML has a life span that mimics organic plants - it grows from a seed, matures into a fully productive tree, and eventually dies. 
Each mining machine's characteristics (its hardware capabilities) will be recorded within the CML NFT.
- Investors can buy shares in a mining nodes to earn a percentage of that node's mining rewards. This is done through a CML token which will be described below.
- Miners buy new Camellia seeds through open bidding. The DAO issues new CML NFTs in accordance to how much demand for hosting there is in the TEA ecosystem.
- CML mining nodes earn TEA from the gas paid by end-users to use their hosting nodes to run TApps. 
- CML nodes can also earn remote attestation rewards in TEA as compensation for performing this public service. 

### 2.2 State Maintainer Seats
A state maintainer seat license allows a node operator to function as a state machine node. Because of the importance of the state machine, the TEA Project team and select invitees will only be allowed to run state machine nodes for approximately the first 2 years after mainnet launches. The supply of these seat licenses will be determined by a DAO vote and they have a complex token economy described as follows:

- TApps will pay state maintainer nodes as part of using the state machine. This is known as the **Memory Tax**.
- The Memory Tax is the sole source of income for state maintainer nodes and is shared among all node operators.
- Every state maintainer will pay a state maintainer tax known as a **Harberger Tax**. The TEA Project has elected to adopt a Harberger Tax given that state maintainer licenses are a public good.
- The Harberger Tax paid by each state maintainer is a set percentage (voted on by the DAO) of the seat's self-valuated price. Each seat owner can set their own price for what they think their state maintainer license is worth. Anyone in the community can purchase any of these seats by bidding 1T higher than the self-valuation price.
- Harberger Taxes go to pay remote attestation rewards earned by CML node operators. Any excess funds are also distributed to the CML node operators as a surplus reward for their mining services.

### 3. Bonding Curve Tokens

The TEA Project uses bonding curves throughout its tokenomics design for the following types of token entities:

1. TApp tokens
2. CML hosting node tokens

These bonding curve tokens have built-in liquidity to enter and exit positions, providing security for investors. In the bonding curve below, the price increases as more tokens are bought. Investors buy at the red line and sell at the blue line where there will always be liquidity at each level along the bonding curve.

<img width="815" alt="5 TEA-Project-Bonding-Curve" src="https://user-images.githubusercontent.com/86096370/188735110-b522f614-5eda-4b08-b62d-901ec13b70c2.png">

Stated simply, when either a TApp or CML node is used, its bonding curve token holders will benefit be receiving dividend payments and an increase in their bonding curve token's value.

## TEA Ecosystem Development

The TEA ecosystem is an interdependent network that includes a variety of participants. The TEA Project incentivizes each of its participants through a carefully designed token economy. Each participant is incentivized to act in their own best interest but in doing so also help strengthen the entire TEA Project ecosystem.

- **Miners**: They own hardware mining machines, purchase CML (NFT, it's like software license), provide computing services and get rewarded with TEA. Read more in [[_4_mining/README|basic concepts for miners]].
- **Developers**: They use the TEA framework to develop TApps which run on mining machines and provide services to earn revenue which would be distributed to investors and miners according to smart contracts on a bonding curve. You can read more about [[Developers|basic concepts for developers]].
- **Investors**: Users with TEA funds can invest in mining machines and especially TApps (through their bonding curve tokens) in order to get ROI. For example, each TApp will have its own TApp token that investors can purchase as if investing in a stock. Each TApp token represents a share in the TApp and gives the holder dividends in the form of more TApp tokens issued to its holders whenever someone uses the TApp. As these tokens are issued on a bonding curve, the earliest TApp token investors will enjoy the largest amount of price appreciation. Investors can learn more about investing in [[TApp-Token-Supply-and-Demand|entity tokens]].
- **End-users** Concurrent to attracting developers to the platform, the TEA Project will actively market emerging TApps to consumers. We imagine the TEA Project being an ideal ecosystem for existing cloud apps looking to migrate and benefit from decentralization and data privacy. We look forward to the types of decentralized apps that will flourish on the TEA Project network. We also want to play an active part in welcoming consumers looking to make the leap from the centralized web 2.0 world to the TEA Project and web3.