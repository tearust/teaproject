# FAQ - TApps

## What are TApps?
Decentralized apps (dApps) are known as **TApps** in the TEA ecosystem. Each TApp has a token associated with it that's issued on a bonding curve, a mechanism that rewards its token holders as the supply of the TApp token increases. 

## What types of apps can the TEA Project support, what languages etc?

The apps that run in the TEA Project are called TApps. TApps are nothing but WebAssembly functions plus Javascript front end code with possibly some SQL scripts included. 

TApps don't impose any limits with regard to the programming language that developers can use. All major modern programing languages are currently supported by WebAssembly.

TApps are not smart contracts, which means that developers don't need to learn Solidity or write "smart contracts". All they need is the same tools they used to write web and mobile apps, and even SQL is supported.

## Are TApps EVM Compatible?

TApps are not based on smart contracts and therefore dvelopers don't need to build their apps with EVM-compatability in mind. If the developer needs to send a txn or listen to events from any EVM, it can still do so using the existing EVM API from Infura. TEA Project itself has built-in EVM API but it's not currently open to public use. 

If developers want to topup / withdraw an ERC20 token from / to ETH or any other EVM blockchain, they can call the API directly without any additional code. This is how the TAppStore's **Topup** and **Withdraw** functions work.

## Can you run asynchronous code across multiple compute environments, or does code run and work locally only?

A more detailed answer to this question can be found in the ["developer" section of Teaproject.org](https://teaproject.org/doc/#/doc_list/get_started.md). To give a quick answer, a developer will need to write two kinds of functions:

1. Functions that run in a host node similar to how web2 code runs in a web server 
2. Functions that run in the state machine, similar to web2 code runs inside a database (stored procedures). 

Neither the developer or anyone else has control of where the code will run. This location is controlled by the consensus algorithm as well as a hardware random code generator. For state machine code, it will always be run in state machine maintainer nodes. This is an asyncronous process as far as reaching consensus between all state machine maintainer nodes. For the code to run in a host node, it will be run in whatever node the enduser select. Only the js code of the TApp runs in the enduser's local browser.

## Can developers direct TPM 2.0 to perform decryption or encryption during egress from a remote computer?

Because of security reasons, developers are not allowed to contact the TPM chip directly. All decryption and encryption would be done with API provided by the Wasm runtime. So the answer is **no**, the TPM chip can't be directly accessed by developers.

## Specific TApps

### Leaderboard TApp
The Leaderboard is a TApp that shows an updated list of how well contestants are doing based on their net asset value. Note that the leaderboard calculation doesn't take into consideration the value of your COFFEE vouchers (i.e. when you exchange some of your testnet TEA for COFFEE vouchers, you're asset value will go down).

#### How do you get a net positive gain in the Leaderboard TApp?

You can either sell something or earn by providing some services to others. This is how the real world works. Note that only the TEA you earned inside the TEA ecosystem is considered part of your "net gain". If you buy TEA token from outside the ecosystem, it's NOT considered part of your net gain. For example, if you buy 100 TEA tokens on Uniswap, that TEA isn't considered part of your net gain. If you topup those 100 TEA tokens and consume them all without earning any new assets, then your net gain is -100. It's the same with TEA Fluencer faucets, which would give you externally-generated tokens that aren't considered to be earned in the ecosystem.

#### How comes my net gain in the Leaderboard is negative?
A negative net gain basically means that you're spending more money than you're earning. Because our community members who run the TEA nodes provide the app hosting services to you, you pay them everytime you use the app. In other words, you pay others who provide app services through their running of host nodes. If you cannot earn money from others, your net gain will be negative.