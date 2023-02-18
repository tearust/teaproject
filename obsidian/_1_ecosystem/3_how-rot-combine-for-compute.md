# How TEA's 3 RoT Make Compute Happen

In the TEA project, dApps code runs on a layer-2 WebAssembly runtime inside the hardware protected (TPM) enclaves. These enclaves generate Proof of Trust data handled by blockchain consensus on layer-1. In TEA, blockchain doesn't use consensus to verify the result of dApps code, but the execution environment where the code runs. 

TEA Project TApps combine decentralization, speed, and security through its two-layer blockchain design.

-  The layer-1 blockchain (Ethereum) keeps trust data on the mining nodes running on layer-2. This layer deals with Byzantine fault and ensures that all layer-2 nodes are validated as trustworthy.
-  TEA Project's layer-2 can ignore Byzantine faults as the decentralized mining nodes on layer-2 have already gained trust from layer-1. Each layer-2 mining node has a TPM-protected enclave where the encrypted app code interacts with encrypted customer data where neither the miners or the developers have access to the customer's data.

![layer-2-nodes](https://user-images.githubusercontent.com/86096370/219816105-09c468d5-0ad0-454f-9c19-ad1e6100aa19.png)

Circumventing slow processing speeds inherent with BFT is an endemic problem of decentralized systems. TEA's layer-1 blockchain still uses Byzantine fault tolerance. The longer times needed to reach consensus on TEA's layer-1 won't interfere with the faster speeds required on its layer-2. The TEA network only needs to use the Proof of Trust (PoT) data on layer-1 to reach a consensus on the trustability of nodes on layer-2.