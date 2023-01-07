**Theta** is the percent of every token buy or consume event that's used to fund the development of the TApp. If **theta** is set at .2 (20%), then 1 - .20 = .8 is used to fund the sell side of the bonding curve (80%). The smaller the number for **theta**, the closer the buy and sell prices are on the bonding curve. For example, a **theta** value of .05 (5%) would mean the sell price is always at 95% of the buy price. But a small **theta** has drawbacks to the creator as they will get less of every buy and consume event.

# Theta as TApp / CML Creator

Note that the TApp or CML creator receive the **theta** percentage of whatever funds enter into the bonding curve. When a user creating a TApp or CML token spends TEA for the initial funding, they'll receive **theta** % back in their wallet (e.g. if **theta** is 30% and the initial funding is quoted as 1000T, the user will receive 300T back in your wallet for a net cost of 700T. You will still need to have the entire quoted amount available in your wallet, and you'll receive the **theta** % back as part of the transaction. 

A large **theta** of, for example, .4 (40%) may seem like a good deal for the creator. They'll receive a large share of every bonding curve buy/consume event directly into their wallet. But a large **theta** makes it less attractive for token holders as they'll get proportionally less tokens as a dividend on buy and consume events. Additionally, the sell curve will always be below the buy price by 40%, resulting in a possible scenario where nobody wants to invest in the TApp's token. Such a large **theta** value will force investors to wait a long time to ever be profitable.

# Theta determines spread between a TApp / CML token's buy and sell price

An investor buys at a TApp or CML token's buy price and sells at its sell price. An investor who buys 100T worth of a TApp (or CML) token with a theta of .2 (20%) has 80T go to fund the bonding curve and 20T going to the developer (or miner) Mathematically, the sell price is always (1 - theta) * (buy price) anywhere along the bonding curve.
