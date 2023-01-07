## Every Mining Node Has a Controller Account For Automated Transactions

Every mining node on the TEA platform has a controller account associated with it that's needed for it to perform its own transactions. On the TEA network, some mining transactions are initiated by the user. Actions like hosting a TApp and migrating a mining node will require the user to sign the transaction and pay a small amount of TEA for gas. These actions are initiated by the user, confirmed by the user, and the gas for the transaction is paid out of the user's wallet.

Your mining node also has its own transactions it needs to conduct as part of participating in the TEA network. For example, the mining node will regularly need to update its node profile as well as make reports on offline B CML mining machines. These jobs happen completely automatically without any intervention from the user. These actions are initiated by the mining node, confirmed by the mining node, and the gas for these transactions are paid directly from the mining node's wallet. That is why every mining node has its own controller account complete with a Polkadot wallet address to confirm and pay for transactions.

The only responsibility a user has for their mining nodes' controller accounts is to make sure there's enough TEA in their wallets to pay for gas costs. The owner will need to regularly transfer funds to their nodes' controller accounts to make sure they have enough TEA. If users forget to fund their mining nodes' controller accounts, those nodes will eventually stop sending transactions. 

## Consequences of Controller Accounts Running Out of TEA

When a mining node's controller account runs out of TEA funds, the consequences are different depending on the type of mining node.

* **C CML Mining Nodes** - Although C CML mining nodes are not expected to have 100% uptime since they don't host TApps, there are still financial consequences for a C CML's controller account running out of TEA. In particular, a C CML mining machine will no longer have the funds necessary to send **report transactions** to gain income if its controller account runs out of TEA.
* **B CML Mining Nodes** -  Without TEA funds, a B CML mining node won't be able to send any **update profile** transactions to regularly update its mining node profile. When other nodes see that its node information is not being updated, they will force the B CML node offline and it will no longer be able to host TApps.

## How to Make Sure Your Nodes' Controller Accounts Have Sufficient Funds

The TEA balance of the mining node controller accounts is visible in the UI so owners will clearly know how much TEA is remaining:

<img width="647" alt="controller-1" src="https://user-images.githubusercontent.com/86096370/148435213-e1fda1dd-132f-49a1-b51f-e5873d04f391.png">

If a controller account balance drops to less than 0.01T, then there will be a reminder message (and link) so the owner can topup the controller account wallet:

<img width="824" alt="controller-2" src="https://user-images.githubusercontent.com/86096370/148435219-4c09ad86-73c4-4feb-be25-4f66697dc73a.png">

