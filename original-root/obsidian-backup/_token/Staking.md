# Staking to CML
Staking is a way of earning mining revenue without having to setup a mining machine. CML that's staked to an active mining machine earns a percentage of that miner's rewards, either TEA revenue or TApp token dividend rewards. 

To stake either a defrosted CML seed or 1000T to an open staking slot, locate the CML you want to stake to from the **Mining Camellia** page and click the corresponding **Stake** icon:

<img width="1105" alt="Screen Shot 2021-11-29 at 10 42 04 AM" src="https://user-images.githubusercontent.com/86096370/143933704-462e457f-fbe9-448f-9575-206484f502ac.png">

A few issues to note for potential stakers:

- The lower the staking slot, the higher percentage of rewards that's earned. This means that those who stake the earliest can gain a larger percentage of the rewards.
- Users can only stake to A & B CML mining machines, and not to C CML machines. 

# Why Can't Users Stake to C CML?
C CML miners currently only earn [Availability Attestation rewards](https://github.com/tearust/teaproject/wiki/Mining---Availability-Attestation), a service which allows them to be online or offline as they wish. These are much less stringent requirements compared to a B CML that must always be online to host TApps or else suffer penalties. This means C CML machines aren't always online, and they only earn direct fees from providing an ancillary service to the network. Because these C CML are not actively providing a service to others, there's no revenue to share with stakers.

# Staking Percentages
Note that starting with epoch 5, miners will earn a larger share of the TApp hosting and public service mining rewards: 
- 50% will go to the miner
- 50% will be split between the miner and stakers. This staker group also includes the miner staking at the 0 index slot.

For example, let's say the address ending in **NNP9** is mining with CML 298. That machine has 1 staker, the address ending in **YfLd**. Here's what the staking distribution looks like:

<img width="1086" alt="Screen Shot 2021-10-19 at 5 49 06 PM" src="https://user-images.githubusercontent.com/86096370/138010022-09c65996-7852-48ed-9451-fd70959fb872.png">

Let's say there are 100T worth of mining rewards to be divvied up betweeen miner and stakers for CML 298. Noting that 50% of 100T is 50T, the mining rewards are distributed as follows:

- **NNP9** earns 50T for the miner's share.
- For the stakers' share of the 50T, **NNP9** earns 70.711% of 50T and **YfLd** earns 29.289% of 50T.

So in total, **NNP9** earns (50T + 35.3555T) = 85.3555T and **YfLd** earns 14.6445T of the 100T mining rewards for that round.
