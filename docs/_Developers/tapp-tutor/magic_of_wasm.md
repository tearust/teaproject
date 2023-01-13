# Magic of Wasm

[WebAssembly](https://webassembly.org/) is getting more and more popular in the blockchain world. This might be unexpected since it was originally designed to run inside the browser. But Javascript was originally designed to run inside the browser as well, and it's now common to find Javascript anywhere that code can run.

There are many reasons why the TEA Project uses WebAssembly as the execution format. To name a few:

* Compact size
* Security by design
* Additional security by virtue of running inside our [mini-runtime](mini-runtime.md) which sits inside our hardware [enclave](enclave.md)
* Can be compiled from many different high-level programming languages
* Open-source

In this article, we only focus on the security part. 

## No_std or std? Smart contracts or fully programmable?

For most new blockchain developers that start to write Substrate code, the non_std requirement presents the first barrier. Unlike most applications, Substrate requires the no_std feature otherwise your code won't be compiled to run in Substrate. Most of the existing Rust crates are written for the std library. Unfortunately, developers cannot use them directly, which makes programming in Substrate much harder. 

Of course, there's a reason for that. Substrate wants to create a much safer environment to run Wasm code as the std library may be "unsafe" from a smart contract point of view.

In programming, there's always a tradeoff between security and functionaility. The consequence of remaining secure is that you cannot do too much within a smart contract.  Again, a smart contract is not a fully-featured application; it's just a "turing complete" state machine that mostly deals with accounting. Most of the functionality of modern internet applicationd are simply not possible in a no_std environment.

## TEA Project is not a smart contract, it's Web3

The goal of the TEA Project is to run standard Web3 applications decentralized. Running a smart contract is not the goal. So TEA has to support std which may potentially cause some security issues which Substrate didn't have to deal with. Of course, we cannot sacrifice security in the TEA Project, so we designed the following complicated model to minimize the risk.

## Wasm model as "[actor](actor.md)" and runs inside a[mini-runtime](mini-runtime.md)

The mini-runtime can be considered a specially designed virtual machine. It loads [actor](actor.md)s into isolated spaces. Although this is "std" Wasm, it's still limited heavily by the mini-runtime.  Because the mini-runtime runs inside the hardware [enclave](enclave.md), the enclave is a specially designed linux mini core OS. We removed most of the common Linux components to reduce the attack surface, including the network and file system which are all gone. If any malicious code happens to run inside the enclave (we don't how that would happen, but let's just assume), it will not cause any further damage since there's no network or file system to break. 

## Providers and capabilities

If the actor wants to access anything outside of the enclave, it has to call [provider](provider.md)s with a preset [capability](capability.md). If the actor code is not signed with the specific [capability](capability.md) by the original developer, or the code tries to call the provider unexpectedly, it will be rejected and result in a penalty.

Let's imagine that a hacker modified an actor's execution binary code.

The first issue is that the CID will no longer match and the mini-runtime cannot load.

If it can break this first security barrier, the capability signature check will fail since the developer did not sign this actor with an unauthorized capability. 

Let's imagine that it can somehow break this barrier as well, and somehow it gains this capability and can successfully call the provider inside the mini-runtime. The provider has additional checks before invoking any important functions. Those additional checks include (most commonly) the caller actor ID, destination peer_id, destination actor_id, traffic pattern etc. It will reject any suspicious function call and report it to Remote Attestation.

The providers are currently written by the TEA Project team, not by 3rd party open-source developers. Upgrading [provider](provider.md)s is a very sensitive workflow and care is taken to prevent any malicious code getting introduced into the [mini-runtime](mini-runtime.md). 

## Last barrier, the [birth_control](birth_control.md) policy

Imagine that somehow the hacker has compromised less than 1/3 of the mini-runtime and malicious providers are introduced. As long as there are still more than 2/3 good nodes running, after a few seconds, the next sync will cause a state mismatch error. Due to BFT consensus, those 1/3 nodes will be quarantine and eventually removed from the network followed by slashing their deposit. 

So as long as we keep the [birth_control](birth_control.md) to grow the nodes slowly to ensure we always have over 2/3 good nodes, the system will be secured.
