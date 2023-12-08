# TEA Project Example Use Cases

## Peer to peer WebRTC apps with payment channel

WebRTC is widely used in video conferencing apps similar to  zoom. A pure **peer-to-peer** application doesn't require a server end. All code are running on the client/browser of both ends. In ideal cases, direct network connection between both ends transfer video/audio data without any middle man in between. This type of apps, usually called P2P apps, is a typical Web3 apps because the natural decentralized topology and censorship resilience. 

However, due to lack of a central server, financial transactions between involved parties become a pickle. Traditional blockchain can technically solve this issue but at very high cost. TEA Project has a built-in payment channel feature similar to BTC's layer-2 [lightning network](https://lightning.network/) algorithm. Both parties can setup a payment channel before a video conference call, then exchange payment information during the call. When the call is over, a settlement will be completed. Only very few TEA transactions are needed and at very very low cost. 

If we consider blockchain is layer-1, TEA project is the layer-2 on blockchain, we may call the payment channel as layer-3. 

[ TEA Party](../_5_tapps/TApp-TEA-Party.md) is the example app to demonstrate this feature.

TEA Party allows a host(who create a video chat room), get **paid per minutes** by the guests(who are invited by the host via a shared URL link). There is no central server between host and guests. No matter how long the video chat does, there will be only two (or maybe three) payment transactions sent to the TEA Project network at the beginning and ending. Every minute (depends on cost structure set by the host) both host and guests exchange signed payment confirmation messages through the peer to peer network directly. The payment channel algorithm protect both sides from irresponsible behavior or incidentally network disconnection. 

TEA Party's payment can be bi-directional. That means either guest pay the host (e.g. the host is a online school teacher), or host pay the guests(e.g. the host is making a commercial presentation). 

WebRTC is not limited to video/audio signal, all online collaborative applications can be done the same way. 

There are a lot of WebRTC based peer-to-peer applications online already. But why we did not feel they are popular? One major reason is hard to get profitable without having a running centralized server to collect money. With the help of TEA Project, most of them can be migrated to TEA Project platform benefiting from the tokenomics.

## Realtime games with token incentive

Realtime multiplayers games (e.g. the first and most famous Agar.io) are popular because of simplicity, convenience, and low cost. They even got a name for this type of games, they are called "IO games".

Most of these games follow the Web2 era business model: In-app-Ads. Why do not we apply Blockchain era's **Play-to-earn** model to these already popular games? One of the biggest challenges is that blockchains or even advanced layer-2 can hardly handle constant game state change in realtime, at least when under a reasonable cost constraint. Another naive idea is to convert those realtime multiplayers game to peer-to-peer game, so that one of peers acts as "host" that run the so-called-server code while other peers join as guest peers. This idea can partially solve the blockchain cost problem by submitted a combined-transaction at much less frequency. However, when there is real financial incentive, trust of the host peer would become a new challenge. It is too easy for the host to cheat other players for profit, and other players would never know.

TEA Project has a perfect solution on this. The so-called server logic runs in the hardware enclave inside TEA Project host nodes. All TEA Projects mining nodes will use Remote Attestation to guarantee the game logic to be alter free. 

TEA Project's built-in tokenomics can also bring in **bonding curve**, **lightning network** features to the game for free. 

Migrating existing IO games to TEA Project is nothing but rewriting into WebAssembly on the server side.  Because of the billing system, the game developers no longer concern about setting up server in the cloud or paying for the rent. The new Web3 style tokenomics allow miners to charge gas fee from players directly. 

{% hint style="info" %}

### How does it work?

Let's assume there is a TEA-enhanced Agar.io game (Let's call it TeaAgar), see how developer, miners and players work in this new ecosystem.

1. the game developer compiles the server logic into WebAssembly then upload to Developer's portal. 
1. Alice is an experienced Agar player and also a community influencer. She creates a bonding curve token called "Alice wonderland" in TAppStore. This token will be used as the currency in the the game room she is going to create in next step. 
1. Alice goes to the TeaAgar TApp page and create a new TeaAgar room called "Alice's Agar Room". She shares the invitation link to her community.
1. Bob is Alice's community follower. He click the link and enter Alice's Agar Room. Assuming he already has some TEA token. If not, he will need to earn some TEA first. He needs to buy some Alice Wonderland token which will be used in this game room. Buying this token will increase the token price and total value.
1. Bob and other players play Agar.io in this game room. Every points they earn in the game are actually a Alice Wonderland token. They can see the token balance increase or decrease in real time.
1. Based on the game logic design, the developer can get a cut from all game assets transfer or time-based / activity-based charge.
1. The miner machine which run the WebAssembly code charge gas fee from players directly. That means Bob and other players will pay gas fee in TEA to the miners who provide the server(TEA nodes) they are connecting to.
1. When Bob decide to leave the game, he can withdraw the Alice Wonderland token he earned in the game. He can either sell those token to TEA or other stable coin(e.g. USDT),  or simply keep the token as is if he prefer to see the token price increase in the future.

During this new tokenomics design, game developers do not need to rent and setup a server, neither do the miners. Players pay TEA as gas for consuming miner's server computing resources. Players earn (or maybe lose) game token while enjoying the game. Game developers earn profit from game activity, it could be transaction based or time-based, it is just regular game logic. There is no reason for developers to inject in-app-Ads to make a living.

{% endhint %}

## CBDC cross-border payment and exchange

{% embed url="https://youtu.be/fM5XF-OE7Vc?si=ubSOnQuOyIgdpOeg" %}

## Confidential computing

The TEA Project is looking to disrupt the world of cloud computing by enabling decentralized apps to run on the blockchain at cloud computing speeds. Because we no longer have the cloud servers of web 2.0, we must incentivize miners to provide the underlying infrastructure. IPFS is the actual storage infrastructure for storing both encrypted app and client data, which miners will host within their protected enclaves when their node is selected for a task.

Let's look at the economic incentives for a hypothetical Tensorflow image recognition TApp running on the TEA network:

* The **developer** uploads their Tensorflow image recognition analysis TApp to IPFS.
* A **photographer** uploads their pictures to IPFS.
* A **researcher** wants to use the **developer's** TApp with the **photographer's** pictures.
* A random **miner** is selected to host the Tensorflow TApp and the pictures within the protected enclave of their mining machine.

![1 Example_TEA_Use_Case](https://user-images.githubusercontent.com/86096370/219790724-db85a7c6-5c59-42b9-9550-7c00f63aa69a.png)

In economic terms, the **researcher** pays to use the TApp. The payment flows through the **miner** who provided the node to perform the secure and private calculation, the **photographer** who is paid for the use of their pictures, and the **developer** who is paid for the usage of their code. Every transaction enriches a wide variety of participants in the TEA ecosystem and helps sustain and incentivize further usage.

{% hint style="info" %}

### TEA's Paradox: No one has to trust anyone else

Because the TEA Project is able to provide the underlying trust, there's no longer any trust required between all four parties.

The TEA Project is able to provide all participants a decentralized computation network that is both secure and private. In practical terms, that means the developer who wrote the code cannot breach the photographer's image. And the miner who is randomly selected to host it in their enclave cannot access either the photographer's data or the developer's code. And the researcher is only able to receive the result of the app's calculation and isn't able to access the photographer's data outside of the enclave. The security and privacy that the TEA Project's decentralized computing network is able to provide has wide range of emerging use cases like residential IoT data and patient health records.
{% endhint %}
