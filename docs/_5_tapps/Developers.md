# Developers

The TEA Project allows developers to earn from publishing their code either as standalone apps or as libraries. That means devs can simply publish an API without needing to develop a UI or budget for business development and marketing. Code doesn't have to be open sourced as is the current web2 model for ad-hoc libraries that are usually published to Github and may get some donations.

## Micropayments make it easier for devs to get paid

TEA has an open tokenomics model where no one gets a free lunch. Any actions in the TEA network needs to be paid by someone, and nobody works for free. Miners get paid through every line of code that runs through their CPU/GPU/TPU, occupies RAM / hard disk space, or transfers data using their network. Developers get paid by every time their code is executed. Consumers need to pay for whatever service they receive. Those micropayments can be done at an extremely low cost. That is one of the major benefits of TEA's layer-2 solution. Compared with ETH, it's **almost** free, and extremely fast.

## Trust and security protect your profit

You don't have to open-source your project if you're uploading it to the TEA Project. Your code can be close-sourced if you don't need to be audited for security reasons. You only need to send your code to the TEA Project where it will be sent to a node's trusted enclave. Your code will be compiled there and run inside the enclave. No one can steal your code, and the execution environment can always be trusted. Any miner can host your code and run it; there's no need to send your code to your clients to run or to maintain a server on your own. All these aspects of the business are handled by the TEA Project. 

## Web3 applications are composed of all these smaller API-as-a-Service modules

In web 2.0, you'll have to open-source your code as a library so that other developers can use it **for free or by donation** in their own project. The unfortunate fact is that open-source contributors earn much less than they possibly could by going the donation route. In the TEA Project, all these components are just API functions, running inside one or more mining machines. Applications don't **include** this code in its own binary, but directly **call** these APIs and are paid for its usage by the billing system. The code developer gets paid in TEA tokens from the billing system periodically. 

## Pay by use is the new business model

Just like today's internet is a large set of links to different webpages hosted on different servers, Web3 applications would also consist of a bunch of links to different API calls underneath the facade of the app. The full application could be composed by thousands of those smaller components that are written by different developers. They're all **linked** instead of **included (as in open-source libraries)**.  Pay by use becomes the new business model. 

## Developer links and more info

* Our [dev docs](https://dev.teaproject.org) will be the main resource for developers. We also have a step by step [tutorial for building a TApp](https://dev.teaproject.org/020_tutorial).
* [TEA app developers compile to WebAssembly](https://medium.com/@teaproject/tea-and-webassembly-89991a83bbd1) which allows devs to code in their preferred language before compiling to WASM.
* Developers will also want to familiarize themselves with how the [bonding curve works](../_3_token/bonding-curve-tokens/TApp-Token-Supply-and-Demand.md), in particular the [theta percentage](../_3_token/bonding-curve-tokens/Bonding-Curve-Theta.md) that goes directly to developers. 

Open-source technologies used by the TEA Project include:

* IPFS
* Substrate
* WebAssembly
* Wasmer, Wasmtime
* Parsec
* NixOS
* WolfTPM
* Nats service
* Technical framework language: 90% Rust, 5% GoLang, 5% JS.
