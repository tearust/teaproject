# TApp Creation & Theta

## Parameters for Creating a TApp

Whoever creates a TApp is the owner. The owner is able to decide the name, the initial tokens, and the theta % of every consume and and buy action that goes directly to the owner. There's an initial funding amount (in TEA tokens) that's required to issue the tokens and start a TApp. If for example the owner will take a theta of 10% as their bonding curve incentive, every consume or buy action on the token's bonding curve will net them 10% directly to their wallets.

## Theta Explained

Theta is the percentage of every buy action of TApp's bonding curve token that goes directly to the TApp owner. This can be thought of as the payment that goes to the developer for endusers using their app.

The theta % comes into play whenever there's a buy action on the TApp token's bonding curve. There are two possible buy action scenarios:

1. Someone buys the TApp's token.
1. Someone executes transactions on the TApp.

Let's look at each buy action in depth and how the theta payment to the TApp owner (developer) gets triggered.

## 1. Buying a TApp token

When someone buys 100T worth of a TApp's token that has a theta of 10% for example,

* The buyer gets 90T worth of tokens. This amount is deposited into the TApp token's bonding curve.
* The owner of the TApp gets their theta percentage of the token buy (10%), or 10T.

## 2. TApp usage

When someone uses the TApp, the following actions happen:

* The CML host providing their machine to host the TApp is paid a gas fee by the enduser.
* The enduser pays the usage fee for the TApp.
* The theta % of this fee goes directly to the TApp owner.
* The remainder of the usage fee is used to buy the TApp's tokens on the bonding curve.
* Whatever amount of TApp tokens the above process creates are distributed proportionally to the TApp's existing token holders.

More information is available on [bonding curve theta](../_token/bonding-curve-tokens/Bonding-Curve-Theta.md) as well as more information on [TApp token supply](../_token/bonding-curve-tokens/TApp-Token-Supply-and-Demand.md).
