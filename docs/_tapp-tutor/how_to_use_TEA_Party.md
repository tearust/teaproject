TEA Party user guide (epoch 9, March, 2022): https://teaproject.medium.com/tea-party-tapp-epoch-9-users-guide-2bd8ddd87daa


Youtube video tutorial:
<iframe width="560" height="315" src="https://www.youtube.com/embed/yl7DUnyE_0g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


# Why is TEA Party a typical Web3 application?
Before we get into this question, please read [[What_makes_a_Web3_application]]? first.

Web3 applications are different than web 2.0 applications in multiple ways:

- No centralized hosting services.
- No centralized database.
- No centralized authority (censorship).
- Tokenomics driven.

## No centralized hosting
When you start the TEA party, you'll probably notice that it's different than a regular web 2.0 application. You're not going to a domain name such as `teaparty.com`. Instead, you're given several URLs with different IP addresses such as in the screen shot below.

![urls](https://user-images.githubusercontent.com/1761809/160294873-a61c21b8-e8ee-4cbf-bc41-05ae097a47bb.png)

You'll notice that the IP addresses are different, but the rest of the URLs are identical. The part that's the same correlates to the IPFS CID of the current version of the TEA Party [[front_end]]. The IP addresses are the IPs of the [[hosting_CML]]. In the screenshot above, you'll notice how there are three TEA mining machined (with [[hosting_CML]] planted) currently hosting this TEA Party application. 

There's no **"domain name" or "server"** involved with TApps.  As you can see, anyone (including yourself) can become a host and earn the TApp hosting fee. There's no centralized server involved with deploying a TApp. On the other word, if some super power does not like this application, there's no way for them to take this application offline. TApps say bye bye to cloud server hosting and instead utilize the TEA Project's decentralized hosting node architecture.

## No censorship

The code and data are running inside a hardware protected [[enclave]]. No one (including the developers and the hosting miners) can see what's actually inside. Therefore, there's no way for anyone to censor TApps. If any individual miner does not like a particular TApp, he can stop hosting it. But as long as other miners are willing to host that TApp, then it's still accessible and its content is readily available.

## No centralized database
Not only is the hosting of TApps fully decentralized, the database is also fully decentralized as well. The database layer is probably not something you can see from the front end. But if you read the full developer documentation, you'll understand how the [[State_Machine]] and [[OrbitDb]] work together to [[get_started#Storage| store]] the application data.

## Tokenomics driven
In web 2.0, end users sell their privacy to the tech giants in return for "free" application services. In Web3, because there's no centralized "operator" to steal your privacy for profit, there won't be any free lunch provided by the applications.  Someone has to pay for the service as the miners and developers need to make a living. Some coming from the web 2.0 world might think this is bad, but this is actually how things should work.  Because all the API call to the [[public_service]] need to be paid, all [[get_started#Storage]] will need either RAM or hard drive space. These computing costs are eventually paid by end users. In a TApp like the TEA Party, users can see the price of posting message or sending private notifications. 

<img width="691" alt="Screen Shot 2022-03-27 at 10 00 05 PM" src="https://user-images.githubusercontent.com/86096370/160329742-1f51d1a3-588a-4c45-874b-783ed2867f05.png">

There might be some new business model that end users can earn "free" services in exchange of some work or data. We'll continue trying these models in future versions of the TEA Party.
