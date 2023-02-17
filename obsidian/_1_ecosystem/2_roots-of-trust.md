# TEA's 3 Roots of Trust
TEA Project's three roots of trust are:

1. Blockchain.
2. Trusted hardware.
3. Time. 

Let's dive deeper into each of these roots of trust to better understand how the TEA Project uses each level of trust to build up its compute platform.

## 1. Blockchain
Traditional blockchains use two roots of trust: **consensus** and **cryptography**. But their reliance on consensus makes it impossible for these blockchains to scale and meet the needs of rich applications. The TEA Project has the usual blockchain roots of trust (consensus and cryptography) as part of its layer-1. But since our layer-2 isn't a blockchain and doesn't rely on consensus, we've added two more roots of trust that interacts with our first blockchain root of trust.

## 2. Trusted Hardware
TEA's second root of trust comes from the miners' hardware TPM security chips that generate PoT data stored on TEA's layer-1 blockchain. This setup allows our layer-1 to poll the layer-2 nodes' trust data in order to reach consensus on the trustworthiness of TEA's layer-2 mining nodes.

## 3. Time
TEA’s state machine orders transactions using a Proof of Time algorithm which utilizes GPS satellites. To make the GPS timestamps trustable, we need a trusted enclave to protect their integrity. That's again where the TPM chips come in. These hardware security modules provide the trusted enclave that makes the GPS timestamps trustable along with making data privacy and trusted app execution possible as well.  The layer-2 GPS modules also gives apps the capability to query a database layer.

Using trusted time to order transactions allows TEA to run dApps that rival the speeds of traditional cloud computing. TEA is an ideal platform for any app requiring data security and privacy while remaining censorship-resistant.