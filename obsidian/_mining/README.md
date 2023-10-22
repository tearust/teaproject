# Mining

TEA Project uses the terms **mining** and **running a hosting node** interchangeably. The TEA network's [TApps](../_tapps/README.md) run on hosting nodes that are controlled by individual miners on the TEA ecosystem. Any particular TApp may use multiple hosting nodes in the process of carrying out the computing tasks required by a TApp.

Interested miners can start hosting a node on the TEA network by [[Marketplace-Auctions|purchasing a CML NFT]] and planting it into a compatible machine. Given that our machines require a hardware security module, GPS, and a publicly-accessible IP, [AWS Nitro](https://aws.amazon.com/ec2/nitro/) are the first machines that meet our requirement and are currently accessible to the public. During our previous testing epochs, miners were allowed to run simulated nodes using DigitalOcean droplets. But since Alpha release, digital ocean VM is **no longer allowed**.

Miners are paid a gas fee by end-users who use the miners' machines when they wish to run a TApp. CML hosting nodes are chosen algorithmically based on many factors including uptime, computing power, and any special hardware that a particular TApp might use. 

In addition to gas fees, CML hosting miners are paid for a public service they perform called [remote attestation](remote-attestation.md). A separate class of CML nodes known as **private CML** will become more prominent when CML nodes perform useful functions for home users without hosting arbitrary TApp code. These yet to be released private CML will be able to earn TEA through an [availability attestation process](availability-attestation.md). More information on the CML hosting profitability is available in our [hosting profitability guide](hosting_profitability.md)

Besides hosting TApps, community members can also participate in [helping run TEA's state maintainer nodes](state-maintainer-nodes.md). For further questions on mining, please [consult our mining FAQ](FAQ-Mining.md) or contact us [in our Telegram channel](https://t.me/teaprojectorg).

# Knowledges prerequisites

- Create AWS account
- Basic TEA operation on Web. Starting with alpha.teaproject.org. 
- Know basic operation on CML seed auction, Miner's portal.
- Know how to check log in TAppStore

# Installation steps

- Ask TEA dev team for at least 100 T as a startup fund
- Go to **Seed auction tapp** to buy a CML seed. If there is no seed available, you will need to ask the TEA Dev Team or for the next day when new seems coming up
- Contact TEA Dev Team, provide your own Metamask testing address, ask for  a machine_id
- Follow the instruction at https://github.com/tearust/nitro-build/blob/main/README.md

# Verification on your work
- You should see the CML seeds you owned in CML seeds auction tApp.
- Go to Miner's portal app to verify your node is up running.
- Go to alpha.teaproject.org, you should see your node besides the CML0. 
- If all above works as expected, your node is up running
- After a few hours, check the account balance in TAppStore.  If anything wrong, go to the TAppStore check logs

# Hosting node software updates, failed to do so will cause "offline"
- When there is a new update on the Hosting node software, there will be an announcement in TEA telegram. 
- It is your responsibility to read the announcement and follow the instruction to update your nodes. Mostly just running a scripts similar to what you did when install at the first time
- If you failed to do the update, after a few hours / days, your node will be removed from the "active list". The status should look like "offline" in alpha.teaproject.org. You may see this too in the Miner's Portal TApp. 
- If your node is "offline", users cannot access to your node and you will not earn income until it is updated and get  "online" again. 
- There would be a delay between your finish the update of your node and your node appear "online". It may be half hour to one hour delay.
- The CID of your node URL is actually the version. You can verify the CID in your node's URL to match the CID of CML0. CML0 is maintained by TEA Dev Team, it is always up to date.

