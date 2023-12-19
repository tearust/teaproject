# Core TApps
There are a core set of TApps that are maintained by the TEA Project team for the benefit of the TEA ecosystem. 

## TApp Store
When users launch a node from the [TEA browser wallet](https://wallet.teaproject.org), they'll open the TApp Store wallet. This is the main entrypoint for the TEA Project ecosystem, listing available TApps and investment tokens. This is also the primary account page where users can perform such functions as topup from layer1, withdraw to layer1, and transfer among layer2 wallets. 

There's no settable spending limit for the TApp Store and it has no investable token associated with it.

## Harberger Auction
The Harberger Auction TApp allows endusers to bid on state maintainer seat licenses through an open auction process. Winners of these seat licenses set an adjustable self-valuation price on which they'll be taxed on (known as a Harberger Tax.) All seats are always auctionable even if they're already owned. An enduser simply has to bid 1T higher than the self-valuation price and they'll own the seat if they are the high bidder at the end of the next settlement period.

The profitability of owning a state maintainer seat license can be calculated as follows:

- **Revenue**: The memory tax paid by all TApp developers. This is the fee that devs pay to occupy state machine memory.
- **Expenses**: (Self-valuation price)  x (Daily Harberger Tax rate). 

Running a state maintainer node is profitable as long as the daily memory tax revenues is greater than the Harberger Tax that's paid out daily.

## Leaderboard
The Leaderboard TApp is used to track how users are performing during the epoch. The primary measure is through the **net asset gain** column which takes into consideratin a contestant's starting assets when calculating how much economic gain they've achieved during the current epoch. The Leaderboard will be used by the TEA Project team to award prizes based on how well people do during the epoch.

## Miner Portal
The Miner Portal TApp is used by miners to plant CML into their servers. To use the mining portal and startup a hosting node, a miner will need the following:

- A server IP address.
- A CML seed.
- A Machine ID.

Once a CML node is up and running, users may stop it by clicking the **Unplant** button next to the CML they want to stop. This is useful, for instance, when a node operator wants to change machines. Endusers can also use the Miner Portal to transfer Machine IDs to a different account (presumably another wallet address they own.)

## Seed Auction
The Seed Auction TApp is used by prospective miners who need to secure a CML to run a hosting node. TEA miners (aka node runners) can bid on any open auction for a CML. Any bid on a CML starts a 2 hour countdown.

- If no one else bids on the CML seed, then they'll be the winner of that seed.
- At the completion of the auction, the high bidder must go back and claim the seed into their account.
Once the CML seed is in a user's account, they can plant it into a mining machine by using the Miner Portal TApp.

## Email Wallet
When a user transfers funds in layer2, they can send it either to an ETH address or an email address. If someone is sent a transfer through their email address, they'll get an email notification to claim their TEA tokens. The email wallet allows these users to login to TEA's layer2 without needing to setup a MetaMask wallet. They simply need to do the requested one-time passcode verification everytime they wish to login to their email wallet.

## TEA Fluencer
When you're new to the TEA Project, we assume that you don't have any TEA tokens in your wallet. TEA tokens are the utility tokens used to pay gas fees on the TEA Project network, similar to how ETH works on the Ethereum network. By engaging in actions such as quoting and retweeting, you can earn a certain amount of testnet credit. This credit is designed to help you get started by covering gas fees whenever a transaction occurs on the TEA Project network.

We have a separate article for more information [about TEA Fluencer](TEAfluencer.md).

## Deep Links
The TEA Project has a built-in redirect service to reach some of our core TApps. The shortened URLs along with their redirects are as follows:

### Show Nodes from which to launch Leaderboard
[https://alpha.teaproject.org/#/app/leaderboard](https://alpha.teaproject.org/#/app/leaderboard)

### Launch Leaderboard using Node 0
[https://alpha.teaproject.org/#/node/0/leaderboard](https://alpha.teaproject.org/#/node/0/leaderboard)

### Launch TAppStore using Node 0
[https://wallet.teaproject.org/#/node/0](https://wallet.teaproject.org/#/node/0)