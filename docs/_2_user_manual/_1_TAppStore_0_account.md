# Tea AppStore - Account

TAppStore serves as the gateway to all other apps within the TEA Project. Upon clicking the "Visit" button while selecting a hosting node, you are redirected to the TAppStore hosted on the chosen node.
Within TAppStore, you can:

* Transfer funds from Ethereum (layer1) to the TEA Project (layer2).
* Move funds from TEA Project (layer2) to Ethereum (layer1).
* Access and utilize various TApps available on the TEA Project platform.
* Define spending limits for individual TApps.
* Facilitate token transfers within the TEA Project ecosystem.
* Engage in buying or selling activities related to bonding curve tokens for investment purposes.
* Verify and unlock vesting TEA tokens if they are part of your holdings.
* Retrieve information on your transaction history.
* Export transaction details in JSON format for further analysis or record-keeping.
* Review historical logs to track past activities and interactions.

## Account balances

Upon logging into TAppStore, navigate to the "Account" tab located in the upper-right corner menu. For detailed information on login and logout procedures, refer to the [Login session of User's Manual](README.md#common-login-features-in-most-tapps).

![Pasted image 20231213175051.png](Pasted%20image%2020231213175051.png)

Within the **Account** page, you can review a list of current balances across different accounts.

The displayed address (e.g., 0x4010...46c2 in the screenshot) corresponds to your current login address.

**TEA balance (Chain):** Reflects your TEA balance on the Ethereum blockchain (layer1). These TEA tokens are ERC20 tokens usable in Ethereum but not directly within the TEA Project. Top-up to layer2 is necessary before utilizing them in TEA Project. By clicking the question mark, you can access the TEA token smart contract address on the Ethereum blockchain. Note: The screenshot depicts the Alpha testnet; the displayed address is not the actual TEA token smart contract on the mainnet. Avoid using the address shown in the screenshot to prevent potential loss of real tokens if not clear on this.

**TEA balance:** Represents your layer2 TEA tokens, directly usable in all TApps running on the TEA Project platform.

**TEA credit:** Denotes promotional credit that new users may receive from airdrops or market events. This credit can be used to pay gas fees during the bootstrap period. For more details about credit, refer to [Credit token](_a_credit%20token.md).

**TEA deposit:** Refers to the TEA deposit account, saving your mining deposit in TEA. This deposit is necessary when starting mining or owning a SEAT to cover harberger tax payments.

**USDT deposit:** Indicates the USDT deposit account, storing your mining deposit in USDT. A USDT deposit is required only when you own a SEAT, and these funds are used to cover Amazon Nitro machine rental expenses.

{% hint style="info" %}
**State Sync and Delay:**

The balance numbers displayed on the UI represent the actual figures from a few seconds ago. This slight delay occurs because the hosting node retrieves the latest ledger from the state machine every 10 seconds. On the PC Web page, you can observe the time indicating the update time, which may be up to 10 seconds behind your present time, as highlighted in the red block area in the screenshot below.

![Pasted image 20231213214123.png](Pasted%20image%2020231213214123.png)

When you make any adjustments to your balance, there is a waiting period of up to 10 seconds before the changes reflect on the UI.

However, for transactions involving the Ethereum blockchain, the delay could extend up to 15 minutes. If you initiate a withdrawal operation, kindly be patient and allow up to 10 to 15 minutes for the UI to update with the revised numbers. It will be finally appeared in the Chain wallet section, as illustrated in the screenshot above.

{% endhint %}

## Transfer TEA

You can transfer TEA token from your layer2 address to another layer2 address. If you want to transfer layer1 TEA token, you can use Metamask directly because it operates on Ethereum blockchain. 

![Pasted image 20231216202517.png](Pasted%20image%2020231216202517.png)

{% hint style="info" %}
**Understanding Layer1 and Layer2 in TEA Project:**

The current iteration of TEA Project operates as layer2, built on the Ethereum blockchain as layer1. When you top up TEA tokens from Layer1 to Layer2, it essentially involves locking those TEA tokens in a **lock smart contract** on layer1, while an equivalent amount of TEA tokens is minted in your layer2 account. This approach offers substantial benefits, as tokens in layer2 can be processed more swiftly and at a lower cost.

In the case of TEA Project, once your TEA tokens are transferred to layer2, you can leverage them to settle bills, cover gas fees, engage in gaming activities, invest in bonding curve tokens, and more—all at a significantly reduced cost and faster processing speed. Additionally, you retain the flexibility to withdraw these TEA tokens back to layer1 (Ethereum) at any time.
{% endhint %}

## Transactions list

Your recent transfer transactions are listed here:
{% tabs %}
{% tab title="Phone" %}

![Pasted image 20231216203622.png](Pasted%20image%2020231216203622.png)

{% endtab %}
{% tab title="Web" %}

![Pasted image 20231216202800.png](Pasted%20image%2020231216202800.png)

{% endtab %}
{% endtabs %}

## Export transaction detail to JSON text

You can view and export the detail into JSON format
{% tabs %}
{% tab title="Phone" %}

![Pasted image 20231216203411.png](Pasted%20image%2020231216203411.png)

{% endtab %}
{% tab title="Web" %}

![Pasted image 20231216203135.png](Pasted%20image%2020231216203135.png)

![Pasted image 20231216203150.png](Pasted%20image%2020231216203150.png)

{% endtab %}
{% endtabs %}
In this example, the JSON text is: 

````
{
  "txn_name": "transfer_tea",
  "address": "0x4010902c41b8e0bed8826c43fd309c70d36b46c2",
  "amount": "1000000000000000000",
  "tappIdB64": "0x9adc034a8c8447bba9b7f26902c900b858a187a6",
  "to": "0x03565F55F475f3E9601b448ca0c98e51Ed7a2e8E",
  "nonce": "15814803104851094826",
  "exec_ts": "1702787124932234478"
}
````

This transaction is a "transfer_tea" transaction. The sender "0x4010902c41b8e0bed8826c43fd309c70d36b46c2" transferred "1000000000000000000" (1 TEA = 1000000000000000000 Mocha, where Mocha is the smallest TEA unit) to "0x03565F55F475f3E9601b448ca0c98e51Ed7a2e8E". The nonce is a randomly generated number for security purposes. The transaction was executed at timestamp: "1702787124932234478" in UNIX time units.

This JSON text can be used for verification of its existence using the "Query" explained below.

## Query transaction (in JSON format)

You can provide the JSON text to anyone who wishes to confirm the existence of a transaction. This is particularly useful when transferring funds to a client. By sharing this JSON text, your client can verify that the transaction has indeed been executed within the TEA Project.

When your client clicks the "Query Transaction" button and pastes the JSON text:

![Pasted image 20231216204126.png](Pasted%20image%2020231216204126.png)

A hash value is calculated from the JSON text, representing the unique identifier of the transaction:

![Pasted image 20231216204150.png](Pasted%20image%2020231216204150.png)

Your client has two options for verifying the transaction:

* **Search from Memory:** Ideal for transactions executed within the last 30 minutes. This is the fastest and most cost-effective method for verification.
* **Search from File:** Suitable for transactions executed more than 30 minutes ago. This search may be slower and more resource-intensive.

![Pasted image 20231216204537.png](Pasted%20image%2020231216204537.png)

Upon obtaining the result, your client can confirm that the transaction you sent to them has indeed been executed. This verification process ensures transparency and reliability in the TEA Project transactions.

## Top up

Top-up is an Ethereum (layer1) transaction that transfers your TEA or USDT (ERC20 token) from your account to a TEA Project lock smart contract. After confirmation on the Ethereum chain, the TEA Project (layer2) will mint the equivalent amount of tokens into your layer2 account. Importantly, your layer1 and layer2 accounts share the same address.

The duration of this operation varies, taking a few seconds to minutes depending on the congestion of the Ethereum blockchain.

To complete this transaction, you'll need to sign it using Metamask. Once successfully executed, you'll observe your Chain wallet balance decrease (**first step**). Then, within approximately 10 seconds, your TApp Store wallet balance will increase(**second step**). Note that these two steps typically do not occur simultaneously, so there's no need for concern if you observe the first step without immediately seeing the second one. Just stay calm.

## Withdraw

Withdrawal is the inverse of the Top-up operation, comprising two steps. Initially, the TEA Project (layer2) deducts the requested token amount, followed by the transfer of the same token quantity from the locked smart contract to your Ethereum (layer1) address.
This operation will take even longer due to unpredictable Ethereum blockchain confirmation time. 

This process may take an extended duration (up to 15 minutes) to see the balance change in your Ethereum wallet, particularly due to the unpredictable confirmation time on the Ethereum blockchain.

During the Withdrawal operation, as certain TEA miners cover the Ethereum gas fee for you, you will be obligated to pay this "Ethereum gas fee" to the miner. The exact amount is variable, contingent on the real-time exchange rate between TEA and ETH, calculated at the time of the transaction or queried from a preset value.

![Pasted image 20231216211554.png](Pasted%20image%2020231216211554.png)

Upon confirming the value, it will be displayed before you proceed to "Confirm."

![Pasted image 20231216211743.png](Pasted%20image%2020231216211743.png)

In the provided screenshot, the value is 97 TEA, though this figure may differ during your withdrawal. Keep in mind that you are responsible for covering this fee.

Following a successful Withdrawal, you can locate it in the Transaction list:

![Pasted image 20231216212036.png](Pasted%20image%2020231216212036.png)
