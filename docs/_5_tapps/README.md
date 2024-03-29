# TApps

TApps are rich decentralized applications that run on the TEA network. Due to the TEA Project's unique two layer architecture, TApps are able to run at cloud computing speeds while being hosted on distributed TEA mining nodes. TApps are coded in WebAssembly and securely interact with customer data in TPM-protected trusted enclaves. 

From the end-users perspective, two steps are needed before deploying any TApp for use:

1. A spending limit for the TApp must be set. This ensures that a TApp can't spend more than what you've allocated for that TApp. As money is spent in the TApp, the spending limit is reduced. In this way it functions like an allowance that can be spent, with the end-user able to bump it up at any time.
1. A node must be selected to run the TApp. Because of TEA's architecture, TApps are "hosted" in IPFS waiting for deployment. Because IPFS is just storage, the node that the end-user requests will download the compiled TApp binary from IPFS and execute in the node together with any data that the end-user provides.

The list of available TApps is available through the [TAppStore](../_2_user_manual/_1_TAppStore_1_tapps.md).

Developers interested in coding and deploying their own TApps can reference the following resources:

* [Developer methodology](Developers.md) introduces some important concepts for developers new to developing for the TEA ecosystem. It also discusses the TEA tech stack, including WebAssembly and IPFS.
* [Creating a TApp](TApps-Creating-a-TApp.md) shows how to deploy a TApp to the TEA Project once it's been compiled to WebAssembly format.
* [TEA-Billing](TEA-Billing.md) is the base document with information and related links for understanding TEA's billing system.

You can learn more about other concepts involved with TApps by visiting the [TApps FAQ](FAQ-TApps.md). 
