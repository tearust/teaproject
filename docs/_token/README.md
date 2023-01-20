# Tokens

The TEA Project's tokens are designed to incentivize behavior that helps reward all participants in the TEA ecosystem. We'll often touch on the issue of tokenomics when describing the various tokens in the TEA Project as a means of helping understand why we've designed the tokens the way that we did.

## TEA and CML

The two main tokens of the TEA ecosystem are TEA and CML.

### TEA Token

**TEA** is a fungible ERC20 token that's used as a utility token on the TEA platform. TEA is used to both pay gas fees as well as a payment token for using TApps.

TEA has a 100M total supply and is not inflationary - no tokens will be minted beyond the initial genesis event. The pre-allocation of tokens follows a vesting schedule and will be allocated as follows:

<img width="578" alt="tea-token" src="https://user-images.githubusercontent.com/86096370/213342482-55b9be9b-2d01-44a2-a141-493d4b40e3a5.png">

### CML Token

CML (Camellia) is an NFT token that functions as a mining license on the TEA network. Miners plant a CML NFT into their mining machines to make it active on the TEA network. The supply of CML is determined via demand for computing resources on the network: more demand for computing resources would indicate a shortage of hosting nodes which would prompt the TEA DAO to issue more CML NFTs. More info on Camellia is available in our [CML tokens section](cml-tokens/README.md).

## Bonding Curve Tokens

TEA token rewards for developers who deploy TApps and CML miners who run hosting nodes are paid out via bonding curve tokens.

1. An enduser pays a TApp usage fee and a gas fee to use a TApp.
1. The TApp usage fee goes to all of that TApp's bonding curve token holders.
1. The gas fee goes to all of the CML hosting node's bonding curve token holders. Note that there could be multiple CML nodes involved with running an enduser's transaction. In that case, the gas fee will be split among them according to how much their machines are utilized.

These bonding curve token profits can be better visualized as the remaining profits after all ecosystem expenses are paid out:

![TEA_Economy](https://user-images.githubusercontent.com/86096370/213603062-895dc8c3-f478-4d85-8e1e-5fb44832bd79.png)

More info on TApp and CML miner tokens are available in our [bonding curve section](bonding-curve-tokens/README.md).

# Token Pages

* [TEA Tokens](_token/TEA-Tokens.md)
* [Marketplace Auctions](_token/Marketplace-Auctions.md)
* [Billing System Between Layer1 & Layer2](_token/Billing-system-between-layer1-layer2.md)
* [CML Transfers](_token/CML-Migration-(Transfer).md)
* [TApp Token Supply & Demand](_token/TApp-Token-Supply-and-Demand.md)
* [TApp Token Bonding Curve](_token/Bonding-curve.md)
* [Bonding Curve Theta](_token/Bonding-Curve-Theta.md)
