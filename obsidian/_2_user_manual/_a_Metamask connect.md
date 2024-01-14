# Metamask connect

Metamask necessitates that each account explicitly connects to a specific URL before authorizing the signing of messages. This precautionary measure is crucial in preventing web fraud. For instance, if a fraudulent website is created to mimic your banking system, Metamask will refrain from signing any transactions unless you consciously establish a connection with this deceptive URL.



## How TApp make Metamask connect safer?
  
Each time you choose a different hosting node, the IP address segment of the URL will alter. Similarly, with every TApp upgrade or modification to the front-end code, the CID portion of the URL will change. Any such modifications result in the generation of a **new** URL. Consequently, it is imperative to explicitly reconnect in Metamask before utilizing the signing function.

This design significantly bolsters the security of TApps beyond the standards set by typical Web 2 applications. For Web 2, in the event of a hacker compromising a server and tampering with the code, end users remain unaware of these changes as the URL remains unaltered. Nevertheless, any modification to the TApp code, resulting in a unique CID (essentially a hash of the code), triggers Metamask to no longer identify it as a "known" app. Consequently, users must undergo a new "connect" process to confirm their association with the updated application.

## How to connect?
In Metamask, go to the account page and click "connect".

![[Pasted image 20231212202946.png]]
  
If one of your accounts is not connected to a URL, Metamask may unexpectedly switch to another connected account. This less-than-ideal solution can occasionally lead to user confusion. Therefore, it is advisable to always verify that the displayed address in the UI precisely matches your intended login before proceeding.

![[Pasted image 20231212213030.png]]

If the displayed address is not as expected, it is highly probable that your account has not been connected to this URL.
