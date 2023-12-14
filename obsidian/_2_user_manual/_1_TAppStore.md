# Tea AppStore

TAppStore serves as the gateway to all other apps within the TEA Project. Upon clicking the "Visit" button while selecting a hosting node, you are redirected to the TAppStore hosted on the chosen node.
Within TAppStore, you can:

 - Transfer funds from Ethereum (layer1) to the TEA Project (layer2).
 - Move funds from TEA Project (layer2) to Ethereum (layer1).
 - Access and utilize various TApps available on the TEA Project platform.
 - Define spending limits for individual TApps.
 - Facilitate token transfers within the TEA Project ecosystem.
 - Engage in buying or selling activities related to bonding curve tokens for investment purposes.
 - Verify and unlock vesting TEA tokens if they are part of your holdings.
 - Retrieve information on your transaction history.
 - Export transaction details in JSON format for further analysis or record-keeping.
 - Review historical logs to track past activities and interactions.

## Account balances

Upon logging into TAppStore, navigate to the "Account" tab located in the upper-right corner menu. For detailed information on login and logout procedures, refer to the [[_2_user_manual/README#Common Login Features in Most TApps|Login session of User's Manual]].

![[Pasted image 20231213175051.png]]

Within the **Account** page, you can review a list of current balances across different accounts.

The displayed address (e.g., 0x4010...46c2 in the screenshot) corresponds to your current login address.  

**TEA balance (Chain):** Reflects your TEA balance on the Ethereum blockchain (layer1). These TEA tokens are ERC20 tokens usable in Ethereum but not directly within the TEA Project. Top-up to layer2 is necessary before utilizing them in TEA Project. By clicking the question mark, you can access the TEA token smart contract address on the Ethereum blockchain. Note: The screenshot depicts the Alpha testnet; the displayed address is not the actual TEA token smart contract on the mainnet. Avoid using the address shown in the screenshot to prevent potential loss of real tokens if not clear on this.

**TEA balance:** Represents your layer2 TEA tokens, directly usable in all TApps running on the TEA Project platform.

**TEA credit:** Denotes promotional credit that new users may receive from airdrops or market events. This credit can be used to pay gas fees during the bootstrap period. For more details about credit, refer to [[_a_credit token|Credit token]].

**TEA deposit:** Refers to the TEA deposit account, saving your mining deposit in TEA. This deposit is necessary when starting mining or owning a SEAT to cover harberger tax payments.

**USDT deposit:** Indicates the USDT deposit account, storing your mining deposit in USDT. A USDT deposit is required only when you own a SEAT, and these funds are used to cover Amazon Nitro machine rental expenses.

{% hint style="info" %}
**State Sync and Delay:**

The balance numbers displayed on the UI represent the actual figures from a few seconds ago. This slight delay occurs because the hosting node retrieves the latest ledger from the state machine every 10 seconds. On the PC Web page, you can observe the time indicating the update time, which may be up to 10 seconds behind your present time, as highlighted in the red block area in the screenshot below.

![[Pasted image 20231213214123.png]]

When you make any adjustments to your balance, there is a waiting period of up to 10 seconds before the changes reflect on the UI.

However, for transactions involving the Ethereum blockchain, the delay could extend up to 15 minutes. If you initiate a withdrawal operation, kindly be patient and allow up to 10 to 15 minutes for the UI to update with the revised numbers. It will be finally appeared in the Chain wallet section, as illustrated in the screenshot above.

{% endhint %}

## Transfer TEA

You can transfer TEA token from your layer2 address to another layer2 address. If you want to transfer layer1 TEA token, you can use Metamask directly because it operates on Ethereum blockchain. 

{% hint style="info" %}
**Understanding Layer1 and Layer2 in TEA Project:**

The current iteration of TEA Project operates as layer2, built on the Ethereum blockchain as layer1. When you top up TEA tokens from Layer1 to Layer2, it essentially involves locking those TEA tokens in a **lock smart contract** on layer1, while an equivalent amount of TEA tokens is minted in your layer2 account. This approach offers substantial benefits, as tokens in layer2 can be processed more swiftly and at a lower cost.

In the case of TEA Project, once your TEA tokens are transferred to layer2, you can leverage them to settle bills, cover gas fees, engage in gaming activities, invest in bonding curve tokens, and more—all at a significantly reduced cost and faster processing speed. Additionally, you retain the flexibility to withdraw these TEA tokens back to layer1 (Ethereum) at any time.
{% endhint %}