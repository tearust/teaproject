# CML Seed Auctions

Miners who wish to deploy a node on the TEA Project ecosystem will need to plant a Camellia (CML) NFT into their mining machines. These act as mining licenses for the mining nodes and record important metadata about the node's hardware, the Camellia's age, its credit history, and the machine's capabilities. Most miners will be interested in purchasing a hosting CML which will allow them to host TApps on the network.

## Every CML must be replaced

Every Camellia NFT has a life cycle: it’s born from a seed, grows into a tree, and then eventually dies over a span of approximately 2 years. The productivity of the CML will follow this timeline as well: it's not very productive in the beginning of its life. But as it grows up, it becomes more productive and generates larger amounts of revenue. When the Camellia gets older and starts approaching the 2 year mark, its productivity drops. Eventually, it will reach the end of its life cycle and die. Miners will then need to buy a new Camellia seed and plant it into their machine to start over from the very beginning.

## Determinants of CML supply

There will be a cap of 10,000 CML during the first two years of the ecosystem. Any limits beyond that will be determined by a DAO governance vote. 

The supply of tokens released to be sold on the marketplace through auction is determined algorithmically by the DAO. If there are many idle miners on the network, then demand is relatively low and no new seeds will be released to the marketplace. Conversely, if there's no slack in the system and network miners are near their hosting capacity, then more CML seeds will be released for auction in an effort to bring more hosting nodes online to host TApps.

## CML seeds are purchased through an open auction

CML is purchased through an open auction process where the DAO (or individual users) list their seeds for sale at their desired price. Once a buyer succesfully bids on a CML, the TEA that they used to purchase the CML will be burned by the DAO.

## Auction Duration

Auctions last for 100 blocks. If *Auto renew*\* is selected by the seller and there are no bidders or buyers for the listing, then the auction will continue to be relisted until it's sold.

## Bid Price

The amount bidder is willing to pay for the CML. If bidder is the highest bid price at the end of the 100-block auction duration.

## Buy Now Price

The price at which the seller is willing to sell the CML and end the auction. Note that the **Buy now price** must be at least 1T greater than the **Starting price**.

## Auto Renew

Each auction session stops at the **n** x 100 block height (0, 100, 200 etc.) If an auction is begun during the current auction session, it will be deleted when the next session begins at the **n** x 100 block height. Select the **Auto renew** checkbox if you want the auction to run indefinitely. It will only be removed from the marketplace if it's won by a bidder or you the seller deletes it manually.

## Auctions Require Funding

Auctions require sufficient TEA funding on both the buyer's and seller's part:

* 100T will be locked when the seller lists their auction.
* An amount equal to the bid price will be locked in the bidder's wallet when they place a bid.

## Penalties for Deleting an Auction - Sellers

* If there are no bidders, then there is no penalty for a seller for deleting their auction.
* If there are existing bidders, then there is a 1T penalty for a seller to delete their auction.

## Penalties for Deleting an Auction - Buyers

* If the bidder is the only one bidding on the auction, then the seller will pay a penalty equal to the minimum bid price for the auction in order to delete their bid.
* If there are multiple bidders for the auction, the high bidder must pay a penalty equal to the difference between their bid and the next highest bidder.
