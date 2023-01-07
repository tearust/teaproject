A longer form of this post is [available on our blog](https://teaproject.medium.com/how-tea-projects-use-of-http-in-web3-is-more-secure-than-https-in-web-2-0-d488265af3d2).

# Why Do TEA's dApps Show as "Not Secure" in the Browser

The short answer is that we don't need https because we don't transfer any secrets in plain text between you and anyone else.

In most browsers, if a webserver runs an https server, it's considered "Secure". If a server runs an http server, it's considered "Not Secure". 

Https encrypts all the traffic between the browser and the server. Any sniffer in between cannot get the content, and only the browser and the server can decrypt the content.

But why doesn't TEA need https? Let's explore the longer answer.

## Traditional Cloud Apps Assume Servers Can Be Trusted, But We Don't

In traditional centralized cloud computing, the basic assumption is that the server can be trusted. So https is invented to prevent a sniffer interloping in the middle between client and server. Https encrypts in transit, making the content available once it reaches the server.

In the decentralized TEA world, we don't assume the server is innocent. As long as information reaches a server, the hacker can read the secrete content stored there. 

This is the reason privacy breaching happens almost every day. I am not saying the service providers are bad guys. I'm saying that as long as hackers can break into the server, they can get whatever information on the server as long as it's not encrypted.

In TEA, we don't trust the server. We do trust the small hardware protected modules inside of the server. We call this a TEA module. All the information outside of the TEA module is not secure. Secrets are decrypted only when they enter the TEA module, and encrypted again when leaving the TEA module. 

For the TEA Project to maintain a secure network, making sure the server stays protected amounts to protecting a much smaller target - the TEA module. Smaller targets have a smaller attack surface and are easier to secure.

## TEA DApps Live on IPFS, Not the Server.

When you click the demo dApp, you actually connect to one of the IPFS servers from all over the world. You don't care which IPFS node it is since they're all the same to the end user. You ask the IPFS server to download the html / js / css code to you. You then run the code on your browser. The whole process has nothing to do with any web server as the dApp runs on your own browser.

## But Where Do Computationally Intense Apps Run?

We don't run computationally intensive apps (eg. the Tensorflow algorithm) in your browser. It actually runs on one of the TEA nodes running somewhere in the world. Again, you don't care and don't need to know which one actually runs your code. The blockchain consensus protects your data security and ensures the answer is correct. You can read more in the "Under the Hood" section in our sidebar to get more details.

## How Do My Secrets Safely Transfer to TEA Modules?

Because we don't trust servers, all the secrets need to encrypted end to end. It's similar to https, just that instead of being encrypted between your browser and server, it's done between the browser and the TEA module. Only TEA modules can decrypt the content using a hardware-protected key.
