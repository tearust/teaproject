# TEA Fluencer TApp
TEA Fluencer is a type of TApp designed to allow influencers to engage with their fans/subscribers in a way that benefits both parties. It allows influencers leverage the built-in bonding curve (on the TApp) to gain social media viralness by providing TEA incentives for their fans/audiences to promote their work for them. 

The bonding curve also rewards influencers (creators) with passive income, set through dividends. The consume action happens anytime that the a TEA Fluencer TApp is used by an enduser who performs the required action of the TEA Fluencer TApp.

## Current Implementation of the TEA Fluencer TApp Template
The current implementation of the TEA Fluencer TApp template as of Epoch 12 is as follows.

- Anyone can create a TApp using the TEA Fluencer template.
- The social media action is based around Twitter, specifically a quote retweet.
- The incentive for an enduser is to activate a faucet which provides them currently testnet TEA in exchange for the action they do in social media.

The total chain of events looks like this:

- An influencer publishes a TApp and gives it a name e.g. **Promo**. They create a TApp token at the same time with a symbol e.g. **PROMO**.
- The influencer lists a tweet they want to promote within the TApp.
- The influencer can post a link to their TApp with instructions to quote retweet any particular tweet to their followers if they want to earn some testnet TEA tokens.
- A follower of the influencer (or anyone who views the influencer's tweet) will quote retweet the designated tweet and copy the URL of their quote retweet.
- When the follower opens the influencer's TApp (in this case called **Promo**), they'll paste in the URL of their quote retweet to activate the faucet.
- Upon successfully accepting the quote retweet URL, two things will happen: 1. the enduser will receive a testnet TEA token reward (currently 500T as of Epoch 12) and 2. a consume event will be generated for the TEA Fluencer token holders (in this example, the holders of the **PROMO** token). In Epoch 12, this consume event was for 100 TEA.

The idea is that by promoting their TEA Fluencer TApp, an influencer can both increase a particular tweet's viralness and increase the value of their TApp token all while helping their followers earn some testnet TEA while onboarding onto the TEA Project.
