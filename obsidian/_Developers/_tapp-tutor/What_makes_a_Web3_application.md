
Web3 apps mark a significant departure from the cloud-based internet apps that modern users are used to. Modern internet apps give users relative convenience in exchange for the utility they provide. The typical traits that internet apps share include the following:

1. They're hosted on central servers. Even if the server architecture is distributed it's still owned by centralized companies.

2. These internet apps are often free to use and if not totally free, have a generous free tier.

3. The service provider has control of any user data that's given up to use the service. 

In contrast, a Web3 app runs decentralized on a distributed architecture that nobody owns. An implication of this design is that a dApp can't be turned off by any centralized power. This means that a hosting miner can't censor any content in the dApp, they can only choose to stop hosting the entire dApp. And because no user data is given up to use a dApp, app usage is paid directly by the consumer in the world of Web3.

Let's take a closer look at each of these differences and how the new Web3 dApps differ from traditional internet apps.

## Internet Apps = Pay With Your Data

The implicit contract that internet apps have with its users is that they provide app services in exchange for access to your private data. Consider how many entities have access to your private data when you access a traditional web app.

- Your ISP is likely using your browsing habits to better monetize their ad targeting.
- The app itself has access to your private data while using the app.
- A whole range of tracking beacons are busy below the surface refining your user profile that's useful to advertisers by watching what you do on the app.

Since the collection of the data is free for the apps, they're economically incentivized to maximize the value of private user data as much as possible. This gives internet apps the power to potentially abuse private user data for profit. This includes the [ethically dubious practice](https://www.wsj.com/articles/t-mobile-hacker-who-stole-data-on-50-million-customers-their-security-is-awful-11629985105) of leaving customer data on minimally-secured servers in case it's valuable one day. We'll explore later how censorship is inextricable to both centralized server architectures and app companies collecting private user data.

## Web3: Users Have to Pay
In Web3, there's no free lunch in that every app action has a computing cost associated with it that needs to be paid by the user interacting with the app. In contrast to traditional internet apps, Web3 dApps:

- Use a crypto wallet to login. Your wallet address acts as your username in the Web3 ecosystem. Because many people aren't used to interacting with crypto wallets, this hurdle can make uptake among consumers more difficult for them.
- There's no longer private data being monetized to subsidize free apps as in web 2.0. Instead, users must pay the compute cost directly in crypto to use the app. 

We couldn't say that this is a win in the Web3 column as logging in with a crypto wallet and having to pay for transactions yourself aren't great enticements to onboard new Web3 users. There are certainly usability benefits of internet apps that because of the current ease of use will never migrate over to Web3. Some users may not care that a trivial amount of their private data is being leaked back to a central corporation if they get a good benefit from an app. That's totally understandable, and each consumer has to make a cost-benefit analysis between privacy and the utility they get from free internet apps. In defense of Web3, crypto wallets are becoming easier to use. And even though Web3 users have to pay to use apps, the new paradigm opens up new avenues for users to [monetize their own private data](https://teaproject.medium.com/tea-project-allows-privacy-in-the-home-1ed42d6faac5).

## Internet Apps' Centralization = Censorship

A server-based internet app has multiple layers of centralization that might not be immediately evident. To see how these might negatively impact a typical internet app, let's imagine a modest social media app has just had an influencer publish a controversial post on their platform. The amount of attention the post gets begins to flood the app with new users who are actively publishing their agreement or disapproval of the influencer's message.

This triggers a few cascading events for this internet app that show the perils of centralization:

- **1. Bandwidth**: The newfound traffic exceeds the plan they've paid for and their connections are throttled and many requests are re-routed back to the originating server.
- **2. Infrastructure**: Their hosting provider doesn't know anything about the app's sudden virality and only see a huge spike in incoming connections. Afraid that all the traffic will negatively impact other customers on the same server, the host decides to take the social media app's website offline.
- **3. Application**: The app is happy with all the new traffic until their website is taken offline. They quickly realize that this new influencer is causing more trouble than they're worth and they decide to boot them off the platform.

The example above shows how any of the app's upstream infrastructure providers can pressue the app into censoring its users. And there's even more layers of centralization that can get an app disconnected from the internet:

- **4. Registrar**: Domain names can sometimes be taken offline by filing (even spurious) [DMCA copyright complaints](https://teaproject.medium.com/if-safe-harbor-is-dismantled-will-centralization-increase-7e6bf9327f68).
- **5. Security certificates**: Most often an app is adversely affected when they forget to renew their [SSL certificate](https://teaproject.medium.com/how-tea-projects-use-of-http-in-web3-is-more-secure-than-https-in-web-2-0-d488265af3d2).
- **6. DNS**: Over time, DNS providers like Cloudflare have become more interested in gatekeeping our ability to view internet content.

## Web3: Decentralized Through and Through

Everything mentioned in the above section about traditional internet app tech stack lists a whole roster of centralized infrastructure that's censorable. In contrast, Web3's core tenet of decentralization prevents any one player from taking an app down. By taking a look at the tech stack of a decentralized app and the infrastructure it runs on, we can quickly see the differences it has with internet cloud apps.

We'll use the TEA Project to show how Web3's infrastructure is decentralized throughout its tech stack. Instead of centralized server(s) hosting an internet app, the TEA network's miners host TApps based solely on their own hosting profitability. The bandwidth and compute power for a dApp (called a TApp in the TEA Project) will always be there as long as miners find it profitable enough to host the TApp. 

Can user data be censored in a Web3 architecture like the TEA Project? Not from the hosting miners who don't know what's being run on their nodes. In the TEA Project, app code and user data stays encrypted in IPFS until they're decrypted within a miner's protected enclave for execution.

And TEA Project TApps don't require a domain name or even a traditional host for the front-end as the IPFS CID for the TApp is loaded from the nearest miner's IP address. TEA Project TApps also feature a [traditional 3-tier architecture](https://teaproject.medium.com/the-tapps-3-tier-decentralized-tech-stack-43d2872f609b) that makes app development straightforward. Additionally, all database queries are sent to distributed and decentralized nodes instead of a central database server.

Against the backdrop of centralized app stores, the TEA Project will have its own TApp store that will not censor any TApps from being offered there. Economic incentives ensure that miner nodes will only host TApps that are used by consumers and make the miner money.

(need to add conclusion / call to action)
