# Existing Blockchains Use Layer2s for Scalability
Ever since Blockchain was invented, many projects have tried improving the technology to make blockchain run faster and cheaper. To make blockchains more scalable, there are two primary innovation paths:

- Increasing scalability through improving the consensus: PoW -> PoS and other Proof of Whatever.
- Increasing scalability through off-chain computation, i.e. a layer2.

![_1_Scaling](https://user-images.githubusercontent.com/86096370/170151337-7ae0cff9-0327-46bd-8134-9463a796ae34.png)

Improving consensus can only go so far as nodes inherently have to wait for each other to reach consensus while making allowances for Byzantine fault tolerance. That leaves layer2s as an area of focus for achieving scalability. Basically, a typical layer2 does the following:

- Collects and batches txns from layer1.
- Execute those txns off-chain in layer2.
- Send the result back to layer1.
- Layer1 runs some kind of verification, then accepts the result and updates the blockchain.

The main problems with layer2 are that:

- Each layer2 has to be tightly bundled with a specific layer1.
- Verification is not cheap (e.g., ZKP). Possible resolver could be created either through inventing a new algorithm (unlikely) or hardware acceleration (ASIC).

# A New Type of Layer2
Although layer2s seem like a promising start towards scaling blockchain, there is still room for improvement. Let's imagine a new, improved layer2 that is:

- Agnostic of any type of layer1. Many innovative layer2s are currently tied to specific blockchains giving them only niche applicability in context of the entire crypto ecosystem.
- Able to run above and across all major blockchains. If this new layer2 could run across any blockchain, then we have also solved another thorny problem currently in crypto, that of bridging funds from one chain to another.
- Able to verify results with minimal or even zero verification. Calls back to layer1 to verify the result are a bottleneck that incurs conventional consensus and its typical transaction fees. What if we could verify the result without involving layer1 at all?

![_blockchain_graph](https://user-images.githubusercontent.com/86096370/170151342-49421471-ba29-4843-85a9-1af33d955a81.png)

# We Trust the Result by Verifying the Environment
One aspect of improving the layer2 experience is being able to verify the result of layer2 transactions while minimizing the involvement of layer1 during these verifications. It turns out that we can verify the result of layer2 transactions simply by verifying the environment in which the programming logic is run. For example, if I asked you to verify the correctness of 82986.862 x 916019.1128 = 76017551703.3, how would you go about doing it? Probably very few people would use pencil and paper to verify the result. 

You could counter that a multiplication problem, while tedious to verify, is technically doable by hand. So let's try something harder like verifying that the Ln(99999255) = 18.42. Well, most of us would just pick up our phone and use the calculator or some kind of app and key in the problem. If the result shows correctly, you'll likely be confident that you've verified it successfully. 

But hold on - how do you know the result of your calculator app was correct? Have you recalculated it manually? No, most likely you haven't. You're basically trusting the platform that Steve Jobs and his predecessors have built on the iPhone. Have you ever considered that this is blind trust? 

But it's not completely blind trust because most of us trust hardware like an iPhone because we trust the environment. As a side note, that's why Apple no longer offers support for jailbroken iPhones because they no longer have control over the environment and can no longer guarantee a trustable execution platform. Whether it's an iPhone or it's a CASIO calculator, they're all widely mass-produced and reliable computation environments. If users were to run the same calculation across different iPhones or calculators they would see the same result. 

Let's move one step further and assume the calculator app is another layer2 node. In what circumstances can you believe the result from this node without computing the result for yourself again? To ensure that this layer2 calculator node is trustable, we must ensure that: 

- The integrity of that node can be remotely verified, i.e. the node is in a trustable state from the perspective of any app that wants to run there.
- There are several randomly selected nodes running the same task separately, and they all get the same result.

![_Remote_Node_Attestation](https://user-images.githubusercontent.com/86096370/170151343-135f7428-e7b7-434f-80cb-a29ff5e60350.png)

In this type of environment, can we trust the results? Well, a skeptic might say there are still some corner cases where:

- All of the nodes get infected by some kind of virus but cannot be detected remotely, or 
- Somehow the nodes can collude together and send the user the same wrong answer.

These are legitimate concerns, but if we can use technology to reduce the chances of this occurring to be negligible in real world conditions, this would still be tolerable for our layer2 mechanism. Car accidents happen all the time, yet we still drive, right?

Now you can see, instead of verifying the result by recalculate, we just trust the process. The process means

- The environment can be trusted (i.e. the calculation happens in a trusted environment, which can be a branded environment - Apple, Intel, Casio etc.)
- The input code and data are correct (i.e. hash of the data and code are verified).
- Multiple, randomly selected nodes (uncolludable) get the same result separately.

# Benefits of Switching to Verifying the Environment
## Verifying the Environment is Cost Effective
As we just showed, verifying a brand of a calculator is much easier than recalculating manually using pencil and paper. Even adding on the cost of multiple brands of calculators to run the same formula, it's still much cheaper than recalculating manually. 

Now let's extend this "verify result by verifying the environment" methodology to our potential layer2 solution. Instead of verifying the rollup results from layer2, we just verify the integrity of the layer2 nodes and "blind" trust the result before putting it on the blockchain. This change will significantly reduce the cost and complexity of layer1 verifications.

## Layer1 Agnostic
Let's take things one step further. If the verification of the integrity of layer2 nodes can be done agnostically relative to any type of layer1, then this layer2 could possibly run on any kind of layer1. For example, we can have the same layer2 solution running on top of Ethereum, Polkadot, Cosmos, BSC... as long as the layer1 supports basic Turing-complete smart contracts. This can make the layer2 solution blockchain agnostic, running above and across all major blockchains.

## General-purpose Computing
Let's add one more major feature to this killer layer2 that we're building. Since this new layer2 is agnostic towards the underlying layer1, there's no limit on what kind of txns it can process. In our implementation, general-purpose computing would be available in this new layer2. In this case, we don't really care if the layer1 blockchain is Solidity-based EVM or Rust, Wasm, ink etc. That's totally irrelavent as our layer2 can run general-purpose functions which might be totally unrelated to the layer1 underneath. For example, you could run a Tensorflow task on layer2 without any problems, although we would never expect a Solidity smart contract to run Tensorflow. 

## Cloud Computing as an Oracle
Since we can run general-purpose computing, running a cloud computing oracle in layer2 won't be hard. As long as the environment can be trusted, we can have a distributed cloud-based SQL database running on the layer2. That means using SQL to write a smart contract is no longer a dream!

# How Do We Do This? Using (Controversial) Hardware Integrity
Hardware integrity remote attestation has always been controversial. There will always be arguments between the pure cryptographic algorithm believers vs those who favor hardware trusted execution environments. The truth is there are always pros and cons with either approach. In my opinion, before we can find a perfect math solution, using hardware integrity remote attestation is always a cost-effective compromise solution. 

Long before blockchain, hardware integrity remote attestation has been in the IT industry for decades. All cybersecurity engineers know that trusted computing technologies have been used in every computer and most phones. That's how Microsoft and Apple know that your computer is jailbroken or hacked by a boot virus. How it works is that all the hardware that their OS's run on have a trusted computing secure chip called a TPM to record the hashes of your hardware before the OS is loaded. They report those hashes to Microsoft and Apple and validate it there, which in practice is a form of centralized remote attestation. In the blockchain world, we do this all decentralzied, so we just use other nodes as remote attestors. They're randomly selected by a VRF in the layer1 blockchain to reduce the chance of collusion. All those remote attestors make their own decision seperately and report their decision back to the layer1 blockchain. A simple voting procedure stored in a smart contract will determine if a testee is trusted or not.

Besides trusted computing technology, TEE is also presently widely used in many companies: Intel SGX, ARM Trust zone. The only cons of TEE is that it's tightly bound to the CPU manufacturer which causes new kind of centralization. For example, Intel recently discontinued processors with SGX for the consumer market. If you were a project relying on Intel SGX, then Intel's decision meant that your CPU options for miners going forward just got much more expensive.

# Conclusion and Future of Layer2
I believe that the future of layer2 will be as a standalone general-purpose cloud computing oracle that runs on top of multiple blockchains. This would also mean that the majority of computing tasks could be better performed at a lower cost by moving them from layer1 to layer2. Because our new layer2 does not need any expensive ZKP when sending the result back to layer1, the overall cost is much lower. Since layer2 is verified trusted by layer1, there's no blockchain type of consensus needed, and the performance can match that of traditioanl cloud computing. In TEA Project, we benefit from the many advantages of hardware trust. We use the timestamp as directly received from GPS satelites to run a  "Proof of Time" distributed state machine in our trusted layer2 nodes. This is similar to Google's Spanner database, but ours is fully decentralized. Therefore, TEA Project is a decentralized cloud computing platform that runs so-called TApps. TApps run like typical web apps or mobile apps, but there's no centralized application server or database server needed, as well as no domain name or Verisign certificates. They are unstoppable, unbreakable, and censorship free. 

