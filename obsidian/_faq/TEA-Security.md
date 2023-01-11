# TEA Security

Currently, we have considered the following security edge cases as well as strategies to combat them.

## Insecurity of certain type of nodes caused by software or hardware

Any well-designed system will inevitably have bugs. As long as the number of nodes affected by the bug does not exceed 1/3 of the entire network, the problem can be resolved by updating and upgrading. In order to ensure that the 1/3 threshold is not exceeded, TEA Project uses diversity and population control.
Any single type of CML seeds should not exceed 1/3 of the entire network. Once this number is approached, the number will be controlled when new CML seeds are added. This automatic adjustment avoids the potential risk of centralization and reduces the danger of the whole network caused by the unitary bug.

## DDoS Attack

Although DDoS is very hard to avoid, TEA can reduce the benefits of DDos attacks through anonymity and randomness. As long as valuable targets are mixed among all other valueless nodes, it's relatively safe.
When the number of nodes in the entire network reaches a certain level (for example, TEA modules are attached to a large number of IPFS mining machines), then the DDoS damage is minimal.

**If a great number of nodes are attacked and suddenly lose trust, how does the TEA network handle this attack? How long before the network is able to recover?**

First of all, if an attack is initiated by an untrusted node, it will have little impact on the trusted nodes. Because trusted nodes only communicate with other trusted nodes, it will not accept any network communication from an untrusted node. If the attack is through DDoS, that means the router is under attacked and the machines can’t handle it. A DDoS attack is beyond the scope of blockchain protection, just like any server’s design cannot solve unexpected power outages. These kind of external attacks can only be solved through data center facilities and economic rewards/punishments.

For a trusted node to be attacked successfully, there must be more than 2/3 of the nodes becoming bad actors at the same time. Any attack that doesn't reach this threshold will automatically be killed, and all assets of attackers will be confiscated. If you launch this type of attack with 1/3 of the total nodes and you fail, all of these attack nodes will lose all of their assets. On the other hand, the remaining 2/3 who didn't participate in the attack would make a fortune as these miners token holdings would capture the forfeited assets of the attacking 1/3.

Because TEA uses a CML licensing system, people can't just join the network at anytime as if having a machine was the only prerequisite. To obtain CML, you not only need to purchase it, but you also have to have some mining skills to navigate the changing epochs. It;s very difficult to gather a large number of nodes to cause disarray on the network in a short period of time. It would take an attacker several years to lie in wait before they can finally control a majority of the nodes. Time becomes a huge cost for the attacker. In the mean time, they could've attacked many other blockchains several times over and made a good fortune. So it's not clear why they'd go through all the extra hoops to attack the TEA network.

Due to the NFT properties of TEA’s CML, each CML is different. When the technology matures and the scale is large enough, the diversity of the technical stack will grow to the point that it's difficult for a single technical stack to occupy 1/3 of the nodes, nevermind 2/3. When the network is just beginning, it's relatively easy for one popular tech stack to reach or exceed 2/3 of the network nodes. Therefore, we will be very cautious in the initial stages of issuing CML. We will make sure that the interests are positively related to the project in order to obtain CML. This way, the probability of deliberate attacks will be much lower. 

Optimizing the mining rewards such that miners receive more revenue from normal work rather than attacking the system is another solution for preventing attacks. Once the benefit of helping the network is greater than doing evil, then there's much less possible incentive to do evil.

Last not the least, because of the decentralization and zero-knowledge of the data, even if the attack succeeds, the benefits obtained are usually 0. You don’t want to take a huge risk to rob a homeless person who may be poorer than you.

This theory is explained in the economic design of the white paper. The security of the TEA network is based 60% on the economic design of the project and 40% on computer technology.

## What if people don’t believe in the security of the TEA project

Any new piece of innovation will always be met with skepticism from the public. A great example is Bitcoin–– although it’s been around for over a decade, many still do not believe in its value. Although this is inevitable, TEA Project has adopted some strategies to mitigate these doubts.

- Develop some convincing applications by ourselves. For example, the Gluon Wallet is backed by Polkadot's Open Grant. It runs a hardware wallet service application on TEA, so that very large-scale funds can be protected on TEA's network. If these funds stay safe for a long time, people will naturally believe the TEA technology is safe. Bitcoin also proves its security in this way.
- Bounty program.
- Start with simple and low-risk applications and accumulate credit and reputation over time.