_this is being reworked_

To illustrate how the topup system works, let's imagine an enduser named Bob wants to play a TApp game. Bob has TEA tokens in his layer1 Ethereum wallet but needs to move those TEA tokens up to his layer2 wallet so they can be accessible by the game. 

Bob uses the **Topup** button in his TEA browser wallet account page to move 30T (out of 100T) up to layer2. Bob’s layer2 wallet now shows: 
**Total balance: 100T**

> Deposit: 30T
> Available: 70T 

If Bob changes his mind before playing the game, he can exit the game and get his 30T deposit back which goes back to his layer2 account. If Bob spent 20T to play this game, the 20T would go to the **consumed account** and Bob’s layer2 wallet now shows:

**Total balance: 80T**

> Deposit: 10T
> Available: 70T 

The **consumed account** collects all the players’ consumed TEA for this game. Within a certain amount of time (e.g. 1 hour or 1 day), the consumed account will transfer all TEA in its account back to layer1 and distribute them into this game’s bonding curve. 

## How does this process work in the backend?

- In layer 1, Bob has both a layer1 account and a locked account.
- In layer2, there are the following:
- - A hidden system account
- - Bob’s layer2 account
- - The game’s deposit account 
- - The game's consumed account 

Please be aware that all layer2 accounts are for this game only. Therefore, each TApp has its own set of layer2 accounts. 

When Bob clicks TOP-UP, this is what happens in the backend:
- His TEA goes into a locked account in layer1. 
- The hidden system account in layer2 is able to observe what’s going on those locked accounts. Once it sees 100T put into a locked account, the hidden system account will transfer 100T to Bob’s layer2 account. (Bob’s layer 1 and layer2 accounts share the same address). 
- When Bob clicks DEPOSIT in the game's interface, his 30T will be transferred to the deposit account. 
- - If Bob changes his mind and exits the game, 30T will be refunded to Bob's layer2 account. Bob may click WITHDRAW and all 100T will go to the hidden account and sent back to Bob’s layer1 account. 
- Any TEA Bob pays for playing the game will be transferred to the consumed account. Within a certain amount of time(e.g. one hour), the consumed account transfers all TEA collected to the TApp’s bonding curve on layer1. 