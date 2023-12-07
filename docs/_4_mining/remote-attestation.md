# Remote Attestation

Unlike other blockchain projects that waste lots of computing power in consensus competitions, the TEA project uses all of its computing power in useful tasks. The majority of them are commercial task which are, of course, paid by the clients benefitting from running them. A minority of them are public validation or DAO governance taks. These proportionally small number of tasks are not paid out by any specific client. Rather, they would have to be paid by the DAO as these are public services.

Some of these tasks might include state machine maintenance or rewards for DAO governance, but the most important public service task is **remote attestation**. Remote attestation is the process whereby CML hosting nodes verify the integrity of other peer CML nodes. The remote attestation process relies on randomly selected peer nodes to perform the verification process. Once the candidate node passes remote attestation from its peers, it’s considered a trustable CML hosting node on the network.

The trustability of each hosting node in the TEA network is crucial for our implementation of trusted decentralized cloud computing. All computational work including decryptions are processed inside the hardware TPM-protected secure modules within the hosting CML nodes. The TPM monitors the entire CML miner's hardware, and all critical security evidence is stored in TPM as proof of trust data (PoT). The PoT will be sent to the layer-1 blockchain (Ethereum) for remote attestation by other VRF selected “known good” CML hosting nodes. 

The consensus of whether any particular node is trustable is done at the blockchain layer. The clients only need to query the layer-1 blockchain to verify that the PoT is posted in a valid block so that they can trust the correctness of the computing result done within that CML hosting node.

## Remote Attestation - technical details

TEA's philosophy is that if the compute environment can be trusted, then the computing result can be trusted. The TEA Project verifies the integrity of its layer-2 nodes by leveraging blockchain for consensus. Specifically, an Etherum smart contract specific to the layer-1 communicates with TEA’s layer-2 nodes. The smart contract relays the trustability of the nodes on layer-2 when the nodes perform remote attestation to prove their trustability to each other.

Every CML node that performs computation inside of its TPM will return the result along with its PoT data. Because there's PoT data, everyone can verify its compute result and the process can be trusted by remote attestation.

<img width="261" alt="Screenshot 2023-02-01 at 9 53 06 AM" src="https://user-images.githubusercontent.com/86096370/216123643-64f94630-7b16-4809-8138-c957c3e74010.png">

DApps running on TEA’s layer-2 can run full-stack, full-speed as the ubiquity of trustable nodes means TEA can use non-traditional consensus on its layer-2. The truth comes from the TPM and the blockchain. Any component that doesn’t match what’s claimed will be detected and the offending node will be forced offline.
