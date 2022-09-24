# Host and Unhost TApp
You can use the action button to host or unhost a TApp.

Clicking on the icon will show you a listing of your CML mining machines.

<img width="1013" alt="Screen Shot 2021-09-01 at 6 29 32 PM" src="https://user-images.githubusercontent.com/86096370/131767121-2e1a9de1-8827-4603-8f93-4910a81ff1d0.png">

Available actions are in green, unavailable actions are greyed out.

> _Is there any cost to hosting or unhosting a TApp?_

Although there is no cost for hosting or unhosting a TApp, you must provide a 100T good-faith deposit. If your miner goes offline and stays offline for 1000 blocks, then your deposit will be forfeited.

> _How many TApps can I host with my CML mining machine?_

The number of TApps that a mining machine can host depends on the existing TApps it's already hosting. Specifically, the **host performance requirement** number for every TApp a machine hosts is subtracted from the machine's current performance metric to get the remaining performance possible to host more TApps.

For example, if a B seed machine is at 9500 performance and hosts a TApp with a minimum performance requirement of 2000, then the machine only has 7500 power left to host other TApps.

> _Can I host the same TApp twice to make double the rewards?_

No, a CML mining machine can only host any particular TApp once.

> Hosting TApps is just another way to make TEA income for miners. What if I don't want to host TApps? How much TEA can I make just by doing regular mining?

This "regular mining" means that you start mining your CML by planting it into a mining machine but don't host any TApps. In this case, your mining CML will only run public services like **remote attestation** (RA) which doesn't make much money. The blockchain will randomly select a node to run the RA function against another randomly selected TEA node. Due to the randomness, it's very hard to predict how much you'll earn by simply running RA. The amount you earn from public services like RA when the actual TEA network is up and running is hard to predict:

- The more TEA nodes there are running, the less chances your particular node is selected. This is just simple math.
- The RA selection process is not completely random: more powerful machines with a higher number of staking slots have a higher chance of being selected compared to newer, lower-performance, and sparsely-staked CML machines.
- On the other hand, the more TEA Nodes there are on the network, the more there's a need for RA. 

So it's hard to tell how much you'll earn as a miner on the TEA network. The amount you earn during the contest phase is static and not indicative of how much you'll actually earn when the TEA network is finally up and running.

During the contest, hosting a TApp is rewarded through either a static number (which is a simplification for testing purposes) or through profit sharing. 
- The static number option will pay out miners every 100 blocks no matter how many (if any) consume events happen during that block time. To give a concrete example for the epoch 3 competition, a mining machine hosting a TApp with a minimum performance requirement of 1000 will earn .1 TEA every 100 blocks. Note that the contest lasts for ~14 days, so 14 days * 24 hours * 60 minutes * 10 blocks every minute = the total number of blocks during the contest.
- TApp creators can also elect to share their consume rewards to miners. Miners will take possession of the share of staked tokens for the TApp when they host it. They will then earn a portion of the consume events by holding these tokens. 

Either of these two mining expense payout options will be selected by the TApp creator when initiating their TApp.

When the real TEA network is operational, the actual mining revenue from hosting a TApp comes from the computer resources that are actually used by the TApp. This includes CPU time, RAM usage * time, network traffic etc.

> _What's an optimal revenue generating strategy when choosing TApps to host?_

Your CML has to have enough remaining performance to cover the cost of the TApp’s Host performance requirement. Because your CML has limited performance, the TApps it can possibly host is also limited. With this limitation, you should be smart enough to choose the TApps that make the most out of your CML’s performance.

# Dividend (consumer usage) and expenses (paying the hosting fee)
The income and expenses of every TApp will go directly to and from its bonding curve. The TApp here is a simple DAO that is managed by code and not by the app developers. The bonding curve will automatically calculate how to distribute revenue to shareholders or take tokens from a wallet to pay for expenses.

The consumer usage and expenses will show up in the log for the TApp:

![](https://miro.medium.com/max/4800/1*TE-qum2Z4d6CWWoQ_JAB-w.png)

When a consumer pays to use this YTB TApp, the funds will be distributed based on the bonding curve’s predefined logic. This also holds true for expenses, such as paying for hosting fees.
