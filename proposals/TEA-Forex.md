# Proactive Market Making for Decentralized Forex

## Summary

- Research shows that decentralized forex can reduce costs relative to traditional forex by up to 80%.
- AMMs like Uniswap offer code-based transaction settlement through liquidity pools but introduce impermanent loss and unnecessary market price risk.
- The TEA Project’s PMM design redresses these shortcomings of AMMs while introducing inventory risk.
- The inventory risk of TEA Project’s PMM allows it to create a separate higher-risk pool. Traditional, regulated traders can join the lower-risk pool, while the higher-risk, higher- profit pool is left to crypto investors.
- The TEA Project is a private, secure network where nodes can be provided by the BIS member country central banks.
- In spite of being a crypto project, the TEA Project is a non- blockchain solution. There are no blocks and no chain, which means transactions can be private by design and there’s no chance of front running attacks.
    
## Introduction

Decentralized forex offers a new financial ecosystem that can operate more efficiently and at reduced costs compared to traditional forex exchanges. The cost of foreign currency remittances can be drastically reduced, and transactions can be finalized much faster compared to the traditional banking system. Based on research by Uniswap Labs and Circle, on-chain foreign exchange can [reduce forex remittance costs by as much as 80%](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4328948).
 
While cryptocurrencies and blockchain ledgers offer decentralized trust that does away with needing Country A’s Bank to confirm receipt of remittance from Country B’s Bank, there’s still need for a DeFi algorithm able to provide deep liquidity and match buyer and seller at true market prices. Jumping from TradFi to DeFi reduces the intermediate steps necessary for forex transactions, and the choice of the right DeFi algorithm makes sure foreign currency transactions get through faster and cheaper.

This paper presents a quick overview of our proactive market maker (PMM) and its unique benefits for decentralized forex. We’ll first look at Uniswap and explore how our approaches to providing liquidity differ.

## Uniswap

Uniswap is one of the largest protocols in DeFi by TVL and provides liquidity through a two-sided automated market maker (AMM). An AMM differs from a traditional order book where traders manually set asks and bids.

- An AMM is governed by code which allows transactions to happen instantly without relying on third party buy and sell requests.
- When a trader swaps tokens on an AMM, an algorithm determines the price the trader gets based on the ratio of tokens in the liquidity pool.
- In addition to traders, liquidity providers (LPs) can deposit their funds to liquidity pools and earn a return for depositing their capital.

Liquidity in the Uniswap AMM is always provided in pairs, and these liquidity pools are separate from each other. Uniswap’s version 3 allows LPs to concentrate their liquidity around select price ranges. This allows for more efficient capital deployment and low-slippage trade execution as liquidity is incentivized to move towards where the price is.

Uniswap’s two-sided design does have some drawbacks.

- A Uniswap LP is exposed to the market price risk of two tokens for every pool they’re in. This added risk is especially unwanted when the LP is only interested in providing liquidity for one of the tokens.
- Uniswap’s two-sided design has inherent impermanent loss (IL) risk. Passive price rebalancing is a feature of two-sided AMMs where token balances are bought and sold in order to equalize the pools. This can result in a loss in asset value for liquidity providers compared to just holding the two deposited tokens, aka impermanent loss.

So there’s room to improve on AMMs like Uniswap and make it even better.

## Proactive Market Maker (PMM)

We used AMMs as a starting point to design our own code- controlled market maker that eliminates or minimizes IL and market price risk for liquidity providers. This is achieved through a single-sided liquidity pool design while referencing external price oracles. We call our design a **proactive market maker (PMM)** because of the use of external price oracles to guide the prevailing market price for assets in the liquidity pools. Our PMM does introduce a new inventory risk, but we have a way of moving that risk to a specific pool outside of all the single- liquidity pools.

Using off-chain price oracles, the PMM design can eliminate IL based on the accuracy of the price oracles. As long as it’s a perfect oracle with no loss coming from arbitrage, PMM LPs shouldn’t incur any impermanent loss versus just holding the tokens outside of the protocol. And since our PMM design only requires single-sided pool deposits, LP are only subject to a single asset’s price risk for every pool that they’re in.

The PMM design does have an inventory risk where the protocol holds fluctuating amounts of the various tokens as trades occur. In our PMM design, the PMM takes the other side of all user trades. That means one pool could have a surplus of tokens relative to its depositor liabilities. In the PMM system, inventory risk occurs when tokens in surplus of a pool’s liabilities start decreasing in price.

While the PMM design creates inventory risk, we can move this risk to another pool that’s separate from the lower risk single- liquidity pools.

## PMM: High-risk vs. Low-risk Pools

Our PMM protocol has two types of pools:

- Providing liquidity is done through single-sided liquidity pools with an associated external price oracle. There are separate single-sided liquidity pools for each foreign- exchange currency. These are all considered low-risk pools.
- A special **backstop pool** that takes on the inventory risk as the lower-risk single-sided liquidity pools’ balances fluctuate above or below the pools’ owed liabilities. The backstop pool uses a stablecoin as its reserve token e.g., a stablecoin of USD or an SDR. This is considered the higher-risk pool.
- Let’s delve into how risk is moved to the backstop pool through monitoring of each single-sided pool’s liability coverage and a slippage function.
- The single-sided liquidity pools each have a coverage ratio: (assets owned by the pool) / (liabilities owed to liquidity providers). As trades occur amongst the single-sided pools, some of the pools go into surplus (the currencies that are relatively over-sold), and some of the pools go into deficit (the currencies that are relatively in demand). A coverage ratio < 1 indicates a particular pool is in deficit, while a coverage ratio > 1 signals that a pool is in surplus.

An AMM would apply a passive rebalancing algorithm to get the various currencies relatively balanced with each other. Our PMM instead uses a slippage function applied when trades move a pool away from the coverage equilibrium. If coverage is < 1, a trade that moves the coverage ratio further away from equilibrium is penalized with slippage. Conversely, any trade or liquidity event that moves the coverage ratio closer to equilibrium is either rewarded or incentive-neutral. The slippage penalty gets gradually steeper the more that a pool moves away from equilibrium.

## Avoiding Penalty by Using the Backstop Pool

An LP can withdraw from the backstop pool in lieu of using a swap pool that has a low coverage ratio that would’ve incurred a withdrawal penalty. Instead of paying a steep fee for moving liquidity out of a pool that’s in deficit, the LP can instead request that the backstop pool give them the equivalent amount in the backstop pool’s reserve currency based on the oracle price of their single-sided deposit currency at that time.

A few things happen when an LP eschews a pool in deficit and trades instead with the backstop pool:

- That single-sided pool’s liabilities go down as the LP’s share that went to the backstop pool is no longer on the books.
- The coverage of that pool in deficit improves as the balance remains unchanged while the denominator (the liabilities) have gone down.

But what’s in it for the backstop pool to take on such an exchange? The backstop pool’s balance sheet actually looks like this:

- The reserve currency in the backstop pool.
- The sum of all balances that are in surplus (coverage > 1) across all the single-sided pools.
- Minus the sum of all deficits (coverage < 1) across all the single-sided pools.

By engaging in an exchange that increases a deficit pool’s coverage ratio, the backstop pool is thus increasing the assets in its balance sheet through such an exchange.

Because backstop pool depositors have a higher risk, the PMM system design ensures that they’re rewarded at a higher rate than the lower-risk single-sided LPs. This higher-risk pool would be a great opportunity to engage the crypto community to provide liquidity as they’re often willing to accept higher risk for higher rewards. The lower-risk single-sided pools are appropriate for more conservative investors who are willing to forego higher returns in exchange for more security. The more attractive yields in the higher-risk backstop pool can incentivize crypto investors to provide deep liquidity to this new decentralized forex market.
 
Note that many of our ideas for our PMM have been adapted from the Amber Project. Although they’ve yet to launch, you can read more about the math behind a PMM design with a backstop pool in [Amber’s white paper](https://0xamber.com/downloads/Amber.pdf).

## The Use of TEA Project’s Architecture

TEA Project is built on top of blockchain (Ethereum specifically) but has a layer-2 separate from blockchain. Through the use of TPM chips and GPS modules, the TEA node architecture can achieve an unlimited TPS while providing a decentralized database that’s ideal for decentralized finance.

Because the TEA Project isn’t a blockchain, it has no public ledger by default. The transaction record can be public or private according to privacy needs. Additionally, the fact that there are no blocks means that front running attacks typical in blockchain- based DeFi apps are no longer possible. Given that there are no blocks and transaction finality literally at the speed of time in the TEA Project, bot manipulations such as sandwich attacks are no longer possible. And TEA’s secure nodes, leveraging TPM protection, can provide price trustable price oracles to the entire network.

To reiterate, the solution we’re proposing here isn’t a blockchain. It’s a private and secure network between BIS member country central banks where the actual nodes are provided by the BIS member countries.

## Conclusion

A proactive market maker improves upon impermanent loss and market price risk by introducing single-sided pools tied to external price oracles. And although a new inventory risk exists, this is mitigated by an elegant design balancing price slippage and asset-to-liability coverage of each pool. This also allows for a higher-risk pool to be created that’s more targeted towards crypto investors. Together with the private node infrastructure of the TEA Project that allows for secure and lightning fast transactions, this new market making algorithm can make decentralized forex even cheaper while allowing a wider range of market participants.
