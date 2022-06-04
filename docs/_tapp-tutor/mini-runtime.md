Mini-runtime is a WebAssembly runtime made by the TEA Project team based on the existing WasCC runtime.

The mini-runtime has a host executable and a bunch of [[provider]]s and [[actor]]s. The actors are WebAssembly modules containing [lambda](https://en.wikipedia.org/wiki/Lambda_calculus) functions. The providers are native executable libraries that provide features actors can call. Usually these features are forbidden from being used by actors (for example, networking or saving data to persistent storage (IPFS/OrbitDB)).

# Protected by the enclave
The mini-runtime is the only executable allowed to run inside the [[enclave]]. The benefits are:

- It's fully isolated from the other components of the node. The operating system has no access to the inside of the enclave. Even the owner who has full access to the node's hardware and its operating system cannot know what is happening inside the enclave.
- It's able to achieve the security as explained above without using complex math algorithms (MPC, FHE, ZK etc). This means no overhead and no energy wasted.
- Although the inside of the enclave is unknown to the outside, the TPM chip can still send verification data to the remote verifiers. If anything goes wrong inside, the verifiers will know. Of course the verifier needs to be trusted first. 
- If we trusted the hardware and the code/data loaded into the enclave, the computational result can be trusted as well.


