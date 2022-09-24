# Setup and usage instructions for the TEA Browser Wallet

## Create a Polkadot Wallet

### 1. Install the Polkadot{.js} Extension 
The Polkadot{.js} extension is available for the [Chrome](https://chrome.google.com/webstore/detail/polkadot%7Bjs%7D-extension/mopnmbcafieddcagagdcbnhejhlodfdd), [Brave](https://chrome.google.com/webstore/detail/polkadot%7Bjs%7D-extension/mopnmbcafieddcagagdcbnhejhlodfdd), or [Firefox](https://addons.mozilla.org/en-US/firefox/addon/polkadot-js-extension/) browsers. Other browsers compatible with Chrome should be compatible with the Polkadot extension, check [Github](https://github.com/polkadot-js/extension) for more information. 

The Pokadot extension does not allow for full wallet capabilities, but is focused on only managing your accounts and providing signing capabilities to apps requesting access.

### 2. Create Your Wallet Account
![Click +](https://teaproject.org/img/extension1.png)


![Click create a new account](https://teaproject.org/img/extension2.png)


Follow the instructions to generate your new key pair. 

Please keep your private key secret. During the preview stage, tokens in this account are not real TEA tokens and can only be used on the testnet. But it's still good practice to keep your private key as secure as possible.

## Running the Wallet
There are 2 options for running the TEA browser wallet:

1. **Remote.** You can access the remotely hosted wallet client at [wallet.teaproject.org](https://wallet.teaproject.org).

2. **Local.** The TEA Project is decentralized, allowing you to run the browser wallet locally on your machine without the aid of any central servers. 

- To get started, you should first have Node.js installed on your computer. The [official repo](https://nodejs.org/en/download/) should be sufficient for most users, though [Linux](https://nodejs.org/en/download/package-manager/), [Windows](https://github.com/coreybutler/nvm-windows), and [Mac](https://formulae.brew.sh/formula/node) users can also install Node using a package manager. Just make sure that the Node version installed is greater than 14.

- Visit https://github.com/tearust/tea-browser-wallet/ and download the repo:

![](https://github.com/tearust/tea-docs/blob/main/res/Try_the_demo/Try_the_demo-Tea-Browser-Wallet-download.png)

Unpack the zip archive.

- Start the browser wallet. From your command line terminal, run the following two commands when in the downloaded **tea-browser-wallet-master** folder :

`npm i`

`npm start`

![](https://github.com/tearust/tea-docs/blob/main/res/Try_the_demo/Try_the_demo-node_start.png)

- You should now to be able to access the browser wallet using localhost with the given port in your web browser:

![](https://github.com/tearust/tea-docs/blob/main/res/Try_the_demo/Try_the_demo-wallet-localhost.png)

You can use either [localhost:3000](http://localhost:3000) or [127.0.0.1:3000](http://127.0.0.1:3000)

# Faucet
The **faucet** helps users avoid the scenario where their remaining TEA falls too low to conduct any transactions. Although it’s always best to avoid running out of gas on the way to the gas station, sometimes it still happens. To help those who’ve fallen below the approximate .0003 TEA balance necessary to make any more transactions, we have the faucet available. You can click the button as shown below to get 0.1 TEA. It won’t make you rich, but it’ll at least help you drive to the gas station!

![](<img width="999" alt="Screen Shot 2021-12-22 at 5 08 25 PM" src="https://user-images.githubusercontent.com/86096370/147173133-b1cc00c8-c560-43c5-a129-c24cc547f98d.png">
)