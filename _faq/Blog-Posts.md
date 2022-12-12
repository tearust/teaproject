
## Blog Posts
- [Two Minute Teaser](https://teaproject.medium.com/tea-project-2-minute-teaser-98d5744be4e3)
- [TEA Project: Moving from Cloud Computing to Web3](https://teaproject.medium.com/tea-project-moving-from-cloud-computing-to-web3-9e0bb5443c92)
- [TEA Project: Filling the gap between cloud apps and dApps](https://teaproject.medium.com/tea-project-filling-the-gap-between-cloud-apps-and-dapps-99ff7bb4b408)
- [TEA vs Blockchain](https://medium.com/@teaproject/tea-vs-blockchain-ca31b2e438b3)
- [TEA vs IPFS](https://medium.com/@teaproject/tea-vs-ipfs-f37202a33fc)
- [TEA vs Trusted Computing](https://medium.com/@teaproject/tea-vs-trusted-computing-1224745f1664)
- [Disaster prevention](Disaster-Prevention.md)
- [How big is the market?](https://medium.com/@teaproject/tea-project-disrupting-cloud-computing-market-size-estimation-347b814688db)
- [Who are the founders and core team members?](https://github.com/tearust/teaproject/wiki/The-TEA-Project-Core-Team)
- [TEA Project outstanding features compared to other competitors](https://medium.com/@teaproject/tea-project-competitors-d62f53c05bcf)
- [TEA and WebAssembly](https://medium.com/@teaproject/tea-and-webassembly-89991a83bbd1)
- [Is TEA secure and reliable?](https://medium.com/@teaproject/tea-project-security-reliability-and-robustness-b43013b1740)
- [What is TEA's governance structure?](https://github.com/tearust/teaproject/wiki/Governance-Structure)
- [Why do you say the Internet is broken?](https://medium.com/@teaproject/fixing-a-broken-internet-728f9f0b6df3)
- [How could TEA fix the Internet?](https://medium.com/@teaproject/how-tea-fixes-the-internet-a944dfe2db39)
- [A long article on the TEA token economy - CML and TEA](https://medium.com/@teaproject/challenges-in-the-tea-token-economy-design-cf928a06679b)
- [How will the business model support the token price?](https://medium.com/@teaproject/the-tea-token-model-how-does-the-business-support-value-price-ff5f8278e4fc)
- [How TApps Benefit Everyone in the TEA Ecosystem (includes use cases)](https://medium.com/@teaproject/how-tea-project-tapps-benefit-everyone-7c3d59284205)

#### Mermaid example

```mermaid
  graph TD;
      A-->B;
      A-->C;
      B-->D;
      C-->D;
```

## Example 2

#### Fund flow at this stage
```mermaid
sequenceDiagram  
    participant Apps  
    participant Collection_pool  
    participant Distribution_pool
    participant Maintainer
    participant Public_service_payment
    participant Genesis_block_reserved_miner_reward
    participant Global_bonding_curve
    participant Global_bonding_curve_stakers
    Apps->>Collection_pool: A fixed memory tax very few blocks as a simulator to real memory tax
	Distribution_pool-->>Public_service_payment: Constantly the RA (public service) get paid from the Income tax pool buffer
    Apps->>Collection_pool: Again, A fixed memory tax very few blocks as a simulator to real memory tax
	Distribution_pool-->>Public_service_payment: Constantly the RA (public service) get paid from the Income tax pool buffer
    Collection_pool-->>Distribution_pool: At the last block of today, Calculate the income tax for every maintainer. collect to this pool
    Collection_pool-->>Maintainer: After deductable of income tax, the remaining send to maintainer as revenue.
	Distribution_pool-->>Public_service_payment: Constantly the RA (public service) get paid from the Income tax pool buffer
	Distribution_pool-->>Global_bonding_curve: At the end of today, if the balance of Income tax pool is above 1000T, the exceed part is paid to Global bonding curve
	Global_bonding_curve-->>Global_bonding_curve_stakers: Use the standard bonding curve logic, the stakers will earn dividend in the curve. If they withdraw (sell Global token) they will receive TEA token
	Genesis_block_reserved_miner_reward-->>Distribution_pool: At the end of a day, if the balance of pool buffer is less than 1000T. topup from the reserved token
    
```

