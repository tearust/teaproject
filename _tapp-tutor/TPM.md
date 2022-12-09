The TPM is a popular security chip that exists in almost every computer and most phones. We rely on each node's TPM to generate Proof of Trust data that can undergo remote attestation by a verifier.

TPM is the main component of the Trusted Computing technology. Here's a good simulator to get some hands on experience with TPM: https://google.github.io/tpm-js/. 

For a quick overview of Trusted Computing please go to this [Stanford page](https://cs.stanford.edu/people/eroberts/cs201/projects/trusted-computing/what.html) or for more detail visit [the trusted computing group](https://trustedcomputinggroup.org/).

For the reasons why we need TPM, you can read [[consensus#Proof of Trusted Computing]].

Every node's [[enclave]] is protected by a TPM chip, and the [[mini-runtime]] runs inside the [[enclave]].
