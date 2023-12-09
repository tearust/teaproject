# Profitability of TEA Ecosystem Participants

There are multiple ways of achieving profitability in the TEA ecosystem. Being an investor in TApp or CML bonding curve tokens is one way to earn TEA value. But a more active way is to actually engage in the TEA ecosystem in one of the three following ways.

## Profitability Calculations for TEA Ecosystem Participants

### Become a Hosting Node Miner

* Hosting node miners earn gas fees from end users utilizing TApps on their hosting nodes.
* Initial support is provided through Universal Basic Income (UBI) from the DAO Reserve during the early stages.
* Miners have the option to subscribe to a state update service, ensuring faster state machine updates, with an associated subscription fee.
* Miners are responsible for the maintenance costs of their hosting node machines, typically requiring Amazon Nitro hardware.
* To operate on the TEA network, miners must acquire CML seeds (NFTs) serving as licenses for their hosting nodes.

Gas fees are measured through the TEA Project mini-runtime virtual machine's billing system, based on WebAssembly code execution. Comparable to Ethereum's ETH gas system but more cost-effective, miners earn higher profits as more users visit their hosting nodes, leading to increased code execution and gas fees.

During periods of low user activity, UBI from the DAO Reserve subsidizes miners, helping cover hosting node maintenance costs.

The state subscription fee is initially waived. When real-time state updates become available for hosting nodes, this fee will be implemented. This feature is especially relevant to applications like [real-time collaboration applications](2_example-tea-in-use.md#realtime-games-with-token-incentive).

Hosting node revenue contributes to CML bonding curve tokens, with a percentage (theta %) directly benefiting the miner. This revenue-sharing design extends to CML bonding curve investors as dividends, establishing a symbiotic relationship. Investor support enhances the market cap of CMLs, improving their ranking and visibility, attracting more end user attention and traffic for miners.

{% hint style="info" %}

### Strategies

* **Early TEA Mining Opportunity**: Optimize profitability by joining TEA mining at the earliest opportunity. A reduced number of hosting miners correlates with higher Universal Basic Income (UBI).

* **Strategic CML Bonding Curve Creation**: When establishing your CML bonding curve, allocate substantial funds during the initial funding phase, as prices are lower. A higher market cap secures a superior rank, enhancing competition and attracting more users and traffic.

* **Cost-Effective Amazon Nitro Machine Selection**: Choose an Amazon Nitro machine with an ARM CPU for cost efficiency, as they generally offer lower prices compared to X86 CPUs.

* **Monitoring Hosting Node Status**: Stay vigilant about the status of your hosting nodes. While they typically undergo automatic upgrades, manual restarts may be necessary to ensure synchronization with the latest version. An outdated hosting node risks suspension, resulting in income loss during downtimes.
  {% endhint %}

### Become a TApp developer

* TApp developers are relieved of server costs as miners cover their own machine expenses.
* Revenue for TApp developers is generated through in-app purchases made by end-users, determined by the payment logic design in your app.
* When TApps initiate transactions with the state machine or store data in the global state, associated costs are borne by the TApp and paid to state maintainer nodes. This expense is calculated using the TEA Project mini-runtime billing system and a memory tax algorithm.
* Each TApp functions as a bonding curve token, with generated revenue directly contributing to the bonding curve token, akin to the revenue model for hosting miners.

{% hint style="info" %}

### Strategies

Besides the general strategies mentioned earlier, there are some specific considerations for developers:

* **Optimize Client-Side Logic**: Adhere to the "no-free-lunch" rule by handling application logic on the end user's client side (browser or mobile app) whenever possible. Logic executed on the client side incurs no charges. Conversely, if the logic is processed on the hosting node (server side), the end user is responsible for the associated gas fees. When sending transactions to the state machine or storing data in the state machine, your app incurs gas fees and memory taxes, emphasizing the importance of designing with overall user and cost efficiency in mind.

* **Hierarchical Data Storage Approach**: Prioritize storing data first in the client, then in the hosting node, and finally in the state machine. Storing data in clients (browser or mobile app) has no associated cost, while storing data in the state machine incurs memory taxes. Hosting nodes can sometimes store data at a lower cost without synchronizing with the state machine, although this approach may be less secure.

* **Protocol-Based Design Over Server Logic**: Consider designing protocols for business logic that can be executed between clients, eliminating the need to send transactions to the server or state machine. Payment channels like the Lightning Network exemplify this approach.

* **Limited Server Access for Logs**: In the Web3 environment of the TEA Project, developers lack access to miners' machines, and the project is designed to prevent the disclosure of confidential runtime information from inside the enclave. Unlike the Web2 world, where developers commonly access server logs for debugging and monitoring, this is not feasible in TEA Project Web3. Developers must design their own logic for log outputs, ensuring the code is open for public review to avoid inadvertent disclosure of confidential data. Additionally, note that even miners can only access server logs generated outside the enclave. 

{% endhint %}

### Become a state maintainer node

Coming soon...
