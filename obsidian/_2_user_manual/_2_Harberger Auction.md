# Harberger auction

In the [[7_profitability#Become a State Maintainer Own Your SEAT| "Own Your SEAT" section of TEA Profitability document]], we provided insights into generating profits through SEAT ownership. The SEAT auction process is facilitated through the application outlined in this guide. For a more comprehensive understanding of Harberger TAX and SEAT functionality, please refer to the [[TApps-Core#Harberger Auction|Harberger Auction section]]. This article focuses exclusively on the user interface.

![[Pasted image 20231217201119.png]]

The accompanying screenshot is sourced from the Alpha testnet, where currently only three SEATs are in operation.

## Table columns

- **ID:** The unique identifier assigned to the SEAT, starting from number 1.
- **Owner:** The address of the current owner of this SEAT.
- **Status:** Indicates whether the SEAT is currently active or pending (if someone is bidding).
- **Self Estimated Price:** The price used to calculate Harberger tax. If this price is lower, someone else may pay a higher amount to acquire it. If the price is too high, the owner will need to pay a higher Harberger tax.
- **Last Self Estimated Price:** If the SEAT's self-estimated price is changed, it will take effect after the next settlement period. This column shows the previous price.
- **Last Price Change at:** Indicates when the SEAT's self-estimated price was last updated.
- **Next Owner:** During a bidding process, the highest bidder on this SEAT will be displayed here. All settlements will be completed in the next settlement period. Before settlement, anyone can bid higher to take ownership.
- **Sold Price:** The price at which the SEAT was last transferred.
- **Sold At:** The timestamp of the last SEAT transfer.
- **USDT Deposit:** All SEAT owners are required to maintain a USDT deposit for Amazon Nitro rental. Ensure timely top-ups; if the deposit runs out, the SEAT will be forced to be given up at a price of 1 TEA.
- **TEA Deposit:** SEAT owners must maintain a TEA deposit for Harberger Tax. If the revenue can cover the Harberger Tax, no top-up is needed. However, if the revenue falls short, the owner should take note. If this deposit runs out, the SEAT will be forced to be given up at a price of 1 TEA.
- **Miner Status:** Indicates the owner's mining status—active or offline.
- **Action:** Detailed actions are described below.

## Action buttons

Based on the screenshot, SEAT ID 1 and 3 are owned by others, hence only a "buy" button is available. However, SEAT ID 2 is owned by the current login user, revealing three additional action buttons for this user:

- **Update Estimate Price:** Adjust the self-estimated price to outbid competitors with lower offers. You can also decrease the self-estimated price if the revenue is insufficient to cover the Harberger tax.
- **Give Up SEAT Ownership:** Relinquishing ownership transfers the SEAT to the DAO Reserve immediately, halting USDT and SEAT deposit payments.
- **Refill USDT Deposit:** Replenish the USDT deposit when the balance is low to maintain ownership of your SEAT.

## Next settlement period

The settlement period lasts for 3 minutes within a 30-minute interval. Between two settlement periods, users can bid on SEATs or adjust their self-estimated prices. However, once the settlement period begins, no changes are permitted. The SEAT ownership is determined by the highest bidder during this period, and the payment and deposit transactions are transferred between the buyer and seller.

## Your SEAT is always on the market!

In contrast to traditional markets where your assets are off-market by default, TEA Project's economic design keeps SEAT as a public asset. The SEAT remains continuously available for bidding, irrespective of its current owner. Anyone bidding at a higher offer can acquire it. To retain ownership and the associated revenue generated from the SEAT, the owner may need to self-estimate a higher price and pay a higher Harberger Tax. The Harberger Tax is directed to the DAO Reserve, benefiting all community members.

