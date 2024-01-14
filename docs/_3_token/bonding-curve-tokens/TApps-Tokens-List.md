# TApp and CML Tokens

The Bonding curve tokens shows on  [\_1_TAppStore_2_Investments](../../_2_user_manual/_1_TAppStore_2_Investments.md) are all of the TApps and CMLs on the platform. You will see the **TApp Name** and the **Ticker** symbol for the TApp. There are four other columns showing the price and supply of any particular token:

<img width="1170" alt="Screen Shot 2021-08-31 at 5 03 45 PM" src="https://user-images.githubusercontent.com/86096370/131926213-62236847-6304-48d9-9a3a-2dc659f241df.png">

## Total supply

 > 
 > Total number of tokens currently circulating for the TApp.

*Every TApp has an initial supply once the TApp starts on the platform. How come the supply keeps going up? And why does it sometimes go down?*

Many actions can influence the supply of a TApp's token supply:

* Anyone using the TApp executes a **consume** action that buys and mints tokens on the bonding curve. A portion of the funds goes to the developer while the amount used to fund the reserve, those tokens get distributed to existing token holders.
* Anyone directly **buying** tokens on the bonding curve increases the token supply.
* Anyone **selling** their tokens to the bonding curve causes that amount of tokens to be removed from the supply. The money comes directly from the reserve that funds the bonding curve.

## Buy price

 > 
 > Price at which you can buy the token from the bonding curve.

*How is the price related to the token supply?*
Starting in epoch 3, we use the basic bonding curve of

![](https://miro.medium.com/max/176/1*mKaQYJBvAdLHfjbKZHNBzQ.png)

where **y** is the price and **x** is the supply. The constant **a** is 1 for the buying curve, 0.7 for the selling curve. The integral

![](https://miro.medium.com/max/174/1*o1np50lmOCanIu-5fcWZPw.png)

is used to calculate the TEA amount for the funding pool and the reserve pool.

## Sell price

 > 
 > Price at which you can sell the token into the bonding curve.

*The bonding curve doesn't need another party to buy when I want to sell my token. What exact mechanism is sending me TEA when I sell the TApp token?*

Unlike traditional order book marketplaces, you don’t need a buyer when you sell your investment token. You’re actually selling it to the bonding curve. The selling price is based on the predefined rule that **the selling curve is 70% of the buying curve**. If you buy a token and sell it immediately you’ll lose 30%. The 30% goes to the TApps owners’ funding pool.

![](https://miro.medium.com/max/700/1*eqhPz8WnHke67DY3sU9P-w.png)

## Market cap

 > 
 > The current sell price multiplied by the number of tokens outstanding.

The market cap for a bonding curve is calculated as **tokens outstanding** x **sell price of token**. This result gives you the exact amount of funds in total that are in the reserve of the bonding curve.
