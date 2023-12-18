
# Tea AppStore-TApps list

## List of TApps

![[Pasted image 20231217155206.png]]

Every [[_5_tapps/README|TApp]] have an entry point in the TApps list.

The **Token ID** corresponds to the [[_3_token/bonding-curve-tokens/README|bonding curve token]] linked to this TApp. To invest in this TApp, you can acquire the TApp's bonding curve token through the [[_1_TAppStore_2_Investments|Investments tab]].

The **IPFS CID** column displays the CID (an IPFS concept for Content ID) representing the [hash](https://en.wikipedia.org/wiki/Hash_function) of this TApp's front-end code. While the concept of hash may seem complex for non-tech individuals, it's essential to understand this: If someone, like a hacker, stealthily modifies the code, the hash would markedly differ from the original. The hash serves as a means to verify that the code you are about to execute aligns with your expectations, offering a security measure against unauthorized alterations.

## Set spending limit

To grasp the concept of a **Spending Limit**, please refer to the [[_5_tapps/README#TApps|TApps]] section.

If you attempt to launch a TApp before setting the spending limit, you will be prompted to establish one. Subsequently, you will need to return to the TApps list and relaunch the desired TApp.

![[Pasted image 20231217155259.png]]

Exercise caution when setting the spending limit, ensuring it is a reasonable value. The spending limit serves to safeguard consumers from potential errors. Should a TApp attempt to exceed the spending limit you've set, the transaction will be rejected.
  
There is one TApp for which you do not need to set a spending limit, and that is the TAppStore itself.

## Launching a TApp

Once you have set an adequate spending limit for a TApp, click to launch it.

For mobile users (Metamask browser), you may observe a "redirecting...." message between TAppStore and the TApp you are launching. This is normal; simply wait a few seconds, and the TApp will launch in your browser.

Certain TApps are exclusively designed for web use. Attempting to launch them on a mobile device will result in an error message. Please utilize a computer to launch these specific TApps.

## Creating new TApp on Web

The "Create new TApp" button enables you to generate a new bonding curve token using existing TApp templates. This feature is available only on computer web platforms.

![[Pasted image 20231217145641.png]]

Complete the form to generate a new TApp along with its corresponding bonding curve token. Once submitted, this TApp will be included in the TApps list, and its associated bonding curve token will be featured in the **Investments** section, allowing others to invest in it.




