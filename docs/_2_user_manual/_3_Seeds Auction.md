# Seeds auction

In the [Become a host node miner section of TEA Profitability document](../_1_ecosystem/7_profitability.md#become-a-hosting-node-miner), we provided insights into generating profits through hosting a node. The hosting node requires a CML seed to be planted for operation, and these CML seeds can be obtained through the [Seed Auction](../_5_tapps/TApps-Core.md#seed-auction). 

## Table columns

![Pasted image 20231217211414.png](Pasted%20image%2020231217211414.png)

* **Detail**: Click to view the properties of the CML NFT.
* **CML Key**: The unique NFT ID (ERC721).
* **Current Bid**: The present price of this seed.
* **High Bidder**: The current leading bidder.
* **End Time**: The auction concludes at this specified time. Any higher bid will extend this end time. If no higher bid is placed by this time, the current highest bidder secures ownership of the seed.
* **Min Bid Price**: A new bid must surpass this minimum price.
* **Status**: Designated as "New" if the seed is currently on bid, or "Sold" if the seed has been successfully sold.
* **Sold At**: Indicates the time at which the seed was sold.
* **Actions**: "Bid" to place a higher bid. After the **End Time**, the winner gains the option to "Claim" ownership.

## Rules

During the bidding period, anyone can offer a bid higher than the **Min Bid Price** before the specified **End Time**. Each time a new higher bid is accepted, the **End Time** is extended by one hour. If no higher offer is placed before the **End Time**, the current highest bid prevails, securing ownership of the seed.
