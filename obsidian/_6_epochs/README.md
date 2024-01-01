# Mainnet and test net (Epochs)
## Mainnet - Beta soft launch on Jan 1st, 2024
### Website / entry point

https://beta.teaproject.org

### Beta Release is Equivalent to Mainnet, Not Testnet

All tokens mined and utilized on [https://beta.teaproject.org](https://beta.teaproject.org/) hold real value. The nomenclature "Beta" is employed because the core team intends to frequently update versions within the initial year following the soft launch. Throughout this phase, the core team manages all state machine nodes to ensure swift responses during updates. Once the system attains sufficient stability, anticipated within one or two years, the "beta" label will be discarded in favor of a "hard" launch. If you are a miner operating a "hosting node," please be prepared for regular software updates during the beta period. It is crucial to adhere to provided instructions when notified of updates to prevent mandatory service suspensions.

###  Alpha Release (Testnet) Can Be Ahead by One or Two Versions Compared to Beta Release (Mainnet)

Similar to other Web3 projects, our testnet consistently runs the latest version ahead of its mainnet counterpart. It's common for users to observe new features being unlocked in the alpha version that may still be locked or non-existent in the mainnet, indicating that these features are undergoing testing.

### Emphasizing Learning and Practice on the Alpha Testnet

Considering that all tokens hold real value in the Beta release (mainnet), individuals seeking to explore and experiment with features without incurring any actual financial loss are encouraged to utilize the testnet. It's important to note that any tokens earned on the testnet do not carry real-world value.

### Release notes (latest updates)

Jan 1, 2024, Beta first launch

## Current testnet - Alpha release

### Website

https://alpha.teaproject.org

Plan to start testing by the end of Oct 2023.

### What is Alpha release

Unlikely previous epochs, Alpha release runs the same code base as the to-be-released mainnet. It also runs on the same hardware platform as the to-be-released mainnet. Even after the mainnet launched, the alpha will be still running as a parallel testnet, like Goerli testnet of Ethereum. 

Will there be a Beta release in the future? This is still under discussion.

Tester miners of Alpha release are by invitation only.  Regardless you are a new tester or existing testers from previous epochs, you will need to contact us to get invitation tokens to start testing.

### Alpha vs previous epochs comparison chart 

| Feature | Previous epochs | Alpha version | To-be-launched Mainnet(beta) |
| --------| -----------------| -------------|-----------|
|Layer 1 running on | Goerli testnet | Goerli testnet | Eth mainnet |
| Token has actual value | No | No | Yes|
| Billing on CPU usage | Faked placeholder | Yes | Yes|
|Billing on memory usage | Faked placeholder | Yes | Yes |
| Nodes hardware requirement | Digital ocean Ok | AWS Nitro only | AWS Nitro only |
| Real hardware trust | Faked placeholder | Yes | Yes |

### New features

#### Mobile friendly UI

Alpha release supports Mobile phone!

To use the mobile version, you can install Metamask App to your iOS or Android devices. Use the embedded browser to open https://alpha.teaproject.org. The Metamask app will ask your approval to connect your current crypto account to the URL.

![[Pasted image 20231113212252.png]]

and 

![[Pasted image 20231113212511.png]]

A few tips:
- Make sure you connect ETH testnet "Goerli"
- Make sure you allow Metamask to connect your account to the URL when promoted
- The Mobile UI is optimized to phone use case. That means a few features are removed from mobile UI due to limited screen size. You can access full featured TApps on computer web.
- Metamask supports portait mode only.

#### Payment channel support for P2P applications

This is similar to Lightning network on BTC. Two users play together on P2P apps, they can setup a payment channel, then transfer fund in between without constantly submit transactions. No matter how many times or how much fund they transfer in between, there would be only two or three transactions submitted to the network during the whole life time of payment channel. 

The consensus is between the two users/Apps. TEA nodes won't be involved in judging but process based on the payment protocol. The protocol design protects the participants. For more detail on payment channel, please Google "lightning network".

This is very useful to P2P application since no server can be used to make judgement. E.g. multiple players game without a server. or Podcast2, video casting paid by minutes etc.

Because there is only very few transactions submitted to the network, the cost of transferring fund inside the payment channel is virtually zero. It is possible to set a very fine grained billing policy, such as 0.01 T per minute or 0.001T per kilo bytes. 

Compare with the traditional subscription model, this can be considered "pay as you go".

A community built Zoom-like "TEA Party" application will be release right after Alpha. It uses the payment channel feature. Host can setup a billing policy when creating a video conference room that either the guests pay a small amount of tip to host per minute, or the host pay the guests by minutes. 

#### Referral program and new user voucher

Alpha is very close to the main net. To simulating how the new user get on board the platform, a new user voucher and referral program are designed. 

Almost all transaction in TEA Project is NOT free. The users need to pay gas to do most of works. It would be a chicken egg problem for new users, since they have no TEA to start how could they make more TEA from the system?

There are two ways to start. The new users can go to the TFluencer app to execute a retweet task to get one TEA as "Credit". The Credit is the same usage as TEA but it can only be used to pay gas fee. Credit also decay and finally recycled if not used before expired.

Another way is to get referred by another existing TEA user. Once login from the referral link, both referrer and referee will receive "Credit" bonus. Furthermore, in the future, when the referee pay gas, the same amount of TEA will be bonus to the referrer. E.g. Alice refer Bob to join the TEA Project. The first time Bob login, both Alice and Bob receive 1 credit. In the future if Bob spend 100TEA to pay gas fee, Alice as referrer will also receive 100TEA as referral bonus. This referral program runs until the bonus pool drained out.

There might be the third way from the marketing promotion air drop using TEA Party app. This has not determined yet.

#### Top up / withdraw USDT to share state machine nodes cost for SEAT owners

Owning a SEAT is one of the fastest way to earn TEA mining income. However you will also need to share to cost of running a state machine. In Alpha release, the cost is AWS Nitro machine rental fee. However own a SEAT will need to share the cost of AWS Nitro rental by paying USDT. To make this possible, top up and withdraw USDT is added as a new feature. There is no other feature open to USDT payment rather than sharing AWS Nitro cost. TEA is the only utility token used in TEA ecosystem. 

#### Hot upgrade

For most minor system upgrades, when the new version of WebAssembly code releases, the upgrade happens gracefully as if it was a regular transaction. In most cases, the end user will not notice the upgrade happened. 

However, for some major upgrade a "warm" upgrade are required. That means all users will get a notice about the up coming upgrades. During the upgrade, all transactions would be on hold till upgrade is completed. 

### Notes to test users

Make sure you are still using **Goerli** testnet. This is NOT **Mainnet**. If you set your metamask connects to ETH Mainnet, you cannot join the Alpha release.

### Notes to test miners

You used cheaper Digital ocean servers to run TEA Node in previous epochs because we want to lower down the test cost. **However, this is no longer the case**. From Alpha, we need to test in the same hardware environment as Mainnet. You **HAVE TO** run TEA nodes on AWS Nitro servers.

### Notes to the SEAT holder/investor

Besides running a host nodes, owning a SEAT is also very good way to earn TEA from the state machines. 

There will be three state machine nodes running in Alpha, so three seats are available. In the Mainnet, who owns the SEAT will need to share the cost of AWS Nitro for the same state machine nodes the SEAT refers to.



## Historical Epochs (Obsolete)

Each of the development stages of the TEA Project are referred to as **epochs**. Epochs 2 - 10 were on Polkadot's testnet, while Epochs 11 - 13 were on Ethereum's Goerli testnet. 

**Note: All historical epochs are no longer available online. You can only access the current epoch as mentioned above**

- [Epoch 2](Epoch-02.md) was the first epoch where contestants participated in the TEA mining contest. 
- [Epoch 3](https://teaproject.medium.com/the-tea-projects-epoch-3-mining-contest-e6246de64ee1) introduced the concept of COFFEE as CML coupons were no longer free. A more in-depth post detailing the changes from epoch 2 are available [here](Epoch-03.md).
- [Epoch 4](https://teaproject.medium.com/tea-project-whats-new-in-epoch-4-d0728418ea3a) introduced TApps (and their tokens) which could be created by contestants to earn a portion of its revenue.
- [Epoch 5](Epoch-05.md) introduced cloud computing-based mining to the TEA Project's mining contest.
- [Epoch 6](Epoch-06.md) did away with COFFEE as contestants now had to use their own crypto funds to purchase CML contest vouchers. A new type of social networking TApp called [TEA Party](https://github.com/tearust/teaproject/wiki/TApp:-TEA-Party) is also available to create.
- [Epoch 7](Epoch-07.md) introduces weekly redemptions for mainnet CML vouchers as we move beyond USDT rewards.
- [Epoch 8](Epoch-08.md) has the goal of making the block size smaller by reducing tipping frequency and moving more logic from layer-1 to layer-2 as we work to get our layer-1 as streamlined as possible as we look forward to becoming a parachain in the Dotsama ecosystem.
- [Epoch 9](Epoch-09.md) reintroduces COFFEE as a proxy for bridged-USD and improves its price stability to more tangible backing. Epoch 9 also sees an improved release of the TEA Party TApp that includes private messaging. We also have a new guide on how to earn as an investor instead of as a miner.
- [Epoch 10](https://medium.com/@teaproject/epoch-10-users-guide-5bfa60142d14) introduces a new type of mining, the seat maintainer nodes, which are responsible for running TEA's state machine. There's also a new Investments tab in the TApp Store that shows all of the various investment entities available to users.
- [Epoch 11](Epoch-11.md) marks the TEA Project's move to the Ethereum blockchain as our layer-1. In addition, Epoch 11 refines are hosting model such that end-users are responsible for picking the hosting node to run TApps, not the TApp developers. 
- [Epoch 12](https://teaproject.medium.com/tea-projects-epoch-12-launch-1c1790621bba) is the official launch of TEA Project on Ethereum (Epoch 11 was more of a testing stage). Epoch 12 also re-introduces the TEA Fluencer app as the main entry point for new users seeking a faucet to join the contest.

## What are the TEA Project Epochs(Obsolete)?
The TEA Project will be running on testnets through Epoch 14. The different testing phases are broken up into **epochs** with Epoch 11 marking our transition to Ethereum's Goerli testnet. Each epoch has its own contest associated with it where end-users compete to gain testnet TEA tokens which can be redeemed for mainnet TEA vouchers (COFFEE).


