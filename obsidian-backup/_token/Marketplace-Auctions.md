# Auction Duration
Auctions last for 100 blocks. If *Auto renew** is selected by the seller and there are no bidders or buyers for the listing, then the auction will continue to be relisted until it's sold.

# Bid Price
The amount bidder is willing to pay for the CML. If bidder is the highest bid price at the end of the 100-block auction duration.

# Buy Now Price
The price at which the seller is willing to sell the CML and end the auction. Note that the **Buy now price** must be at least 1T greater than the **Starting price**.

# Auto Renew
Each auction session stops at the **n** x 100 block height (0, 100, 200 etc.) If an auction is begun during the current auction session, it will be deleted when the next session begins at the **n** x 100 block height. Select the **Auto renew** checkbox if you want the auction to run indefinitely. It will only be removed from the marketplace if it's won by a bidder or you the seller deletes it manually.

# Auctions Require Funding
Auctions require sufficient TEA funding on both the buyer's and seller's part:
- 100T will be locked when the seller lists their auction.
- An amount equal to the bid price will be locked in the bidder's wallet when they place a bid.

# Penalties for Deleting an Auction - Sellers
- If there are no bidders, then there is no penalty for a seller for deleting their auction.
- If there are existing bidders, then there is a 1T penalty for a seller to delete their auction.

# Penalties for Deleting an Auction - Buyers
- If the bidder is the only one bidding on the auction, then the seller will pay a penalty equal to the minimum bid price for the auction in order to delete their bid.
- If there are multiple bidders for the auction, the high bidder must pay a penalty equal to the difference between their bid and the next highest bidder.