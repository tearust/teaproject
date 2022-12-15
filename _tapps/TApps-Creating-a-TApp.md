# Creator is the owner of the TApp

Whoever creates a TApp is the owner. The owner can decide the host billing model and pricing. Of course, an initial funding amount (in TEA tokens) is required to start a TApp. The owner will take the 30% bonding curve incentive - every buy action on the token's bonding curve will 

# Creating a New TApp
The owner will choose the following parameters when creating new TApps:

# Create New TApp - Name
This is where you give your TApp a name. You'll also choose a symbol for it in the space right below to uniquely identify it in the TApp list.

# Create new TApp - Initial tokens
TApp creators are responsible for their TApp's initial token funding. The number of initial tokens you wish to fund for your TApp. You can click the **Calculate** button to see what your initial cost in TEA will be for funding your chosen number of tokens. 

See https://github.com/tearust/teaproject/wiki/Bonding-Curve-Theta


# Create new TApp - Min hosts
The minimum number of hosts that must be hosting this TApp. If there are not enough mining machines to reach the **Min hosts** requirement, then the TApp won't run. The default value = 3.

# Create new TApp - Max allowed hosts 
The maximum number of CML miners who can host this TApp. Note that this number has to be greater than the **Min hosts** requirement. Note that if this number is too large, then the less dividend there is to be shared among all investors, which includes the owner. Suggested number is 5 or 6.

- Host performance requirement. The minimum remaining performance number a CML must have to host this TApp. The default number is 3000.
- Every hosting CML will receive a number of tokens. This number is the number of TApp tokens issued to the hosting CML. The higher this number, the more attractive it is to the miners. If this number is too low, miners would like to host other TApps instead.

# Minimum Hosting Performance Requirement
The [Host performance requirement](https://github.com/tearust/teaproject/wiki/Mining#host-performance-requirement) is also a measure of how much performance is taken away from the CML's remaining performance. Consider the following scenario:

- The **TApp A** has a hosting performance requirement of 5000.
- The **TApp B** has a hosting performance requirement of 3500.
- The miner's CML is a **C** seed currently mining at a peak performance level of 10000. It's currently not hosting any TApps.

When this CML hosts **TApp A**, it will now have 10000 - 5000 = 5000 performance remaining. And when it hosts **TApp B**, it will now have 5000 - 3500 = 1500 performance remaining. That means it wouldn't be able to host a TApp with a minimum performance requirement of 2000 or higher but could host another TApp requiring 1500 or lower performance level.

Note that that the performance level of a CML seed changes over its lifetime. As it grows old towards a less productive state, its performance level may drop below what's required by the TApps it's hosting. In our example above, when the CML performance dips below 8500, **TApp B** will remove the CML from its hosting roster. The performance level that was being used by the TApp is returned to the CML when it has been removed.

# Create new TApp - Billing model
The TApp creator can choose between two billing models:

1. Fixed TEA payment per 100 blocks - the miners are paid a fixed amount per 100 blocks no matter if there are consume actions or not during the period. This guarantees the miners a set reward regardless of the success of the TApp. 

Example: a landlord collects rent on a restaurant even during Covid-19 when there are no customers.

2. Fixed TApp token and dividend payments per 100 blocks (recommended) - Miners are not entitled to a fixed mining fee in this model. Instead, the hosting miners will receive a number of **staked** tokens in exchange for their hosting services. These staked tokens benefit from the dividends resulting from the TApp getting tipped out. The tips will increase the total supply of the token. This new increased token supply is distributed to all token holders including the miners who own the staked token.

Example: a food court offers its extra space to a restaurant and only collects a percentage of receipts instead of rent. The food court benefits when the restaurant is busy with customers, but doesn't receive anything when the restaurant doesn't have customers.

Note that if option 1 (fixed TEA payment) is chosen, the TApp automatically sells TApp tokens to release the underlying TEA to pay the miners' fixed hosting fee. This causes the token holders' wallet amount to shrink over time. If the TApp does not gain any consume action tips during the tipping rounds, the investors' TApp tokens will continue to shrink. This could eventually lead to bankruptcy where the investors lose their entire investment in the TApp token.
