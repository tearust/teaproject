Remote attestation is one of the most important concepts of **Trusted Computing**, it's also the cornerstone of the TEA Project.

If we send a bunch of code and data to a computer, how do we know the computer is doing what it's supposed to be doing and that the result is trustable? As a human, we only can see the outside of a machine but have no way of figuring out what real firmware software is running inside. What if a hacker has modified the firmware or software inside the machine? The computer will look exactly the same as it was before the breach. 

Trusted computing was invented to solve this problem. The computer itself can detect the integrity (for example, **secured boot**) or detect another computer's integrity (this is called **remote attestation**).

Validation of integrity is basically comapring the hash of a hardware/firmware/software stack with a series of known correct hash values. If any of these values changes and no longer matches what they're supposed to be, the remote attestatation has failed. Those verifable hash values are provided by the [[TPM]] security chips.

The attestors are selected randomly by the layer1 blockchain. This is out of human control. Every individual attestor made its own decision seperately, and the result was sent to layer1. Layer1 smart contracts runs a BFT algorithm to determine if a candidate is trustable or not. The attestors and layer1 works as members of jury duty and judge the node under inspection. 

The details of Trusted Computing and Remote Attestation are beyond the coverage of this document. But these are very important topics wort reahding more about. 

For a quick overview of Trusted Computing please go to this [Stanford page](https://cs.stanford.edu/people/eroberts/cs201/projects/trusted-computing/what.html). For more details visit [the trusted computing group](https://trustedcomputinggroup.org/ or visit [tpm_key_attestation ](https://docs.microsoft.com/en-us/windows-server/identity/ad-ds/manage/component-updates/tpm-key-attestation).
