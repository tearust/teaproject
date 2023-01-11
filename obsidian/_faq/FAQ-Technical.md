# FAQ - Technical
## What makes the project different from its competitors? 

Compared to other blockchains, the TEA Project isn't really even technically a blockchain although also being decentralized. TEA Project reaches the same goal but through a different technical approach. And there are other well known blockchain projects that are like TEA Project in that they're not really blockchain at all: IPFS, Helium, and Dfinity. TEA Project is similar to these projects in that we're all trying to make a decentralized world, same as blockchains, but through different means. That is to say that TEA Project doesn't have blocks, and there's no chain. It's more reasonably called a "decentralized cloud" or "decentralized database". 

Because we don't rely on blockchain for consensus, the TEA Project can solve most of the problems that are intrinsic to blockchains:

1. Expensive
2. Slow
3. Hard to use, etc. 

To be fair, our solution does require trusted computing hardware and GPS satellite receivers. TEA Project is part of the decentralized cloud niche where there are further specializations. Some projects focus on decentralized storage, some focus on decentralized networking. TEA Project and very few others are focused on computing. Among those who also are focused on computing, TEA Project uses hardware security instead of the software algorithms that are typically used by our competitors like Dfinity. There are pros and cons of each solution which are explored more on our [Medium blog](https://teaproject.medium.com/where-does-the-trust-in-t-rust-come-from-f0b67117d238).

TEA Project has more in common with traditional cloud computing or distributed databases than it does with a blockchain. Its difference from other cloud computing services (Amazon AWS, Google Cloud, MS Azure, Alicloud...) is its decentralization based on the TEA network of distributed nodes.

Another technical innovation is TEA's decentralized use of concepts introduced by [Google Spanner](https://teaproject.medium.com/proof-of-time-how-googles-truetime-can-be-used-in-the-blockchain-55f87b41cb3a). Timestamps are widely used in distributed databases such as Google Spanner. These are instrumental in many of Google's services (gmail, google doc, calendar etc.) in sorting asyncrynous data. The TEA Project is the first blockchain / decentralized cloud project to use such a technology using a decentralized and distributed compute network. For further information on how we've adapted Google Spanner concepts into the decentralized world of Web3, see our [in-depth Medium post](https://teaproject.medium.com/proof-of-time-how-googles-truetime-can-be-used-in-the-blockchain-55f87b41cb3a).

## TEA Project's Consensus
Although TEA Project itself isn't technically built with blockchain, it uses blockchain as one of its [three roots of trust](https://teaproject.medium.com/tea-projects-sources-of-truth-blockchain-hardware-and-time-49663c9f575a) together with trusted computing hardware and GPS timestamps.

TEA Project uses proof of time for consensus which doesn't have to wait for a new block to synchronize across all nodes. Because any node can append to the global transaction queue, there's technically no limit on how many transaction per any given period of time, e.g. unlimited TPS. There will be a network latency delay of course but other than that, all transactions must be processed immediately when the network latency buffer is due. TPS is mostly limited by state machine hardware capacity and network speed.

## Is there a "block explorer" for TEA's layer-2?
TEA Project runs on top of Ethereum (our layer-1) and leverages it for token transactions as well as keeping the ledger of our trustable layer-2 nodes. But what about the TApps running on our layer-2 that are using our proof of time consensus (and not blockchain), is there a block explorer so that anybody can see all layer-2 transactions.

There's not a block explorer by default in our layer-2. Consider the example of our TAppStore which by default acts as a black box to obfuscate transactions to keep them private. There's a log available for the network actions and core apps like the TAppStore, but these logs are cleared regularly. That means if user1 transfers funds to user2 who claims they never received them. After a certain amount of time, neither user would be able to confirm whether this layer2 transaction occurred after the logs are wiped.

Layer-2 will feel like a black box when you're using some system level TApps (such as the TAppStore). These TApps are designed to have privacy protection built-in. It won't disclose any information to the public by default. But you can still see your own financial status on the UI, or even your historical data in the log page.

But the TAppStore doesn't allow others to see your financial information. This is by design, because we're trying to protect our endusers' privacy. This end-to-end privacy is something that most blockchains find hard to achieve.