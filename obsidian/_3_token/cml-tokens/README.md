# CML Tokens

Unlike TEA tokens, CML (Camellia) is an NFT (non-fungible token) and also functions as a special software license. Each CML has a different lifecycle just as each tree is different in nature. After a miner purchases frozen CML, they must wait for it to defrost to mine with it. Once their CML is defrosted, the miner can plant the CML into a mining machine to start mining to harvest TEA tokens. 

## Mechanics of utilizing CML tokens
The primary use case for CML is to run a hosting node on the TEA network. Prospective miners should keep in mind the following aspects of CML tokens.

- CML are purchased at auction using the [Seed Auction TApp](Marketplace-Auctions.md). The total available supply of CML up for auction is dependent on demand for computing resources in the TEA network since CML hosting nodes provide TEA's compute infrastructure. As consumer demand for infrastructure exceeds supply, then more CML seeds will be made available for auction algorithmically by the TEA DAO.
- CML is planted into machines to activate them as hosting nodes for the TEA Project. The process of getting a hosting node online is covered in our [mining section](../_mining/README.md).
- CML has a lifespan of approximately 2 years after which it dies. If a miner still wishes to host a node after their planted CML dies then they'll need to purchase a new CML seed.
- If a miner wants to move their CML to a new machine, then they can follow the [CML migration guide](CML-Migration-Transfer.md).

## Profitability of CML mining
End users wishing to use TApps pay a gas fee to the CML miners who host the nodes. 

The revenue paid to CML miners does not go directly to their wallets. The revenue flow instead goes into a **CML miner token** that's unique to each CML miner. This token is issued on a [bonding curve](_3_token/bonding-curve-tokens/README.md) where supply and price is correlated. 

Let's step through a real life example to see how this would play out.

1. An enduser access to **CML 11** and uses **TApp 1**. He pays both an app usage fee (paid to the TApp's bonding curve token) and a gas fee (paid to the bonding curve tokens of CML miners used during the process execution.)
2. Both **CML 11** and **TApp 1 ** have bonding curve tokens associated with them named, respectively, **CML-11** and **TApp_1*.
3. The gas payment is paid in TEA proportionally to all **CML_11** token holders based on the Bonding Curve rules. So does the app usage fee to the **TApp_1** bonding curve and shared to all bonding curve users.
5. The TEA is injected into these two bonding curve tokens which creates an increased in the supply of both of the tokens.
6. Owners of **CML_11** and **TApp_1** tokens all get issued these surplus tokens. If they want to sell the token at this higher price, they will receive the capital gain.

From the above chain of events, we can deduce that being a CML miner is profitable according to what percentage of their CML's bonding curve token they own. The larger percentage they own, they more they'll get of every gas transaction that uses their mining hardware for running tasks.