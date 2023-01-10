## What types of apps can the TEA Project support, what languages etc?

The apps that can run in TEA Project is called TApps. The  TApps is nothing but WebAssembly functions plus Javascript front end code. Maybe some SQL scripts included too. 

TApps do not limit the programming language. As long as it can be compiled to WebAssembly. All major modern programing languages are currently supported by WebAssembly. So language is no longer a barrier. 

TApps are not smart contract, developer doesn't need to learn Solidity or write "smart contracts". All they need is the same as how they write web app or mobile apps. Even SQL is supported!

Please click the "developer" button in teaproject.org home page, You will read the guide of developing TApps. Note, the content is kind of outdated. We may update it sometime early 2023. But the logic has no change.

## How many ways are there to earn TEA and get a net positive gain?

You can either sell something or earn by providing some services to others. This is how the real world works. Note that only the TEA you earned inside the TEA ecosystem is considered part of your "net gain". If you buy TEA token from outside the ecosystem, it's NOT considered part of your net gain. For example, if you buy 100 TEA tokens on Uniswap, that TEA isn't considered part of your net gain. If you topup those 100 TEA tokens and consume them all without earning any new assets, then your net gain is -100. It's the same with TEA Fluencer faucets, which would give you externally-generated tokens that aren't considered to be earned in the ecosystem.

## Are TApps EVM Compatible?

TApps are not based on smart contracts and therefore dvelopers don't need to build their apps with EVM-compatability in mind. If the developer needs to send a txn or listen to events from any EVM, it can still do so using the existing EVM API from Infura. TEA Project itself has built-in EVM API but it's not currently open to public use. 

If developers want to topup / withdraw an ERC20 token from / to ETH or any other EVM blockchain, they can call the API directly without any additional code. This is how the TAppStore's **Topup** and **Withdraw** functions work.

## Can you run asynchronous code across multiple compute environments, or does code run and work locally only?

A more detailed answer to this question can be found in the ["developer" section of Teaproject.org](https://teaproject.org/doc/#/doc_list/get_started.md). To give a quick answer, a developer will need to write two kinds of functions:

1. Functions that run in a host node similar to how web2 code runs in a web server 
1. Functions that run in the state machine, similar to web2 code runs inside a database (stored procedures). 

Neither the developer or anyone else has control of where the code will run. This location is controlled by the consensus algorithm as well as a hardware random code generator. For state machine code, it will always be run in state machine maintainer nodes. This is an asyncronous process as far as reaching consensus between all state machine maintainer nodes. For the code to run in a host node, it will be run in whatever node the enduser select. Only the js code of the TApp runs in the enduser's local browser.

## Specific TApps

### Leaderboard TApp

#### How comes my net gain in the Leaderboard is negative?

A negative net gain basically means that you're spending more money than you're earning. Because our community members who run the TEA nodes provide the app hosting services to you, you pay them everytime you use the app. In other words, you pay others who provide app services through their running of host nodes. If you cannot earn money from others, your net gain will be negative.
