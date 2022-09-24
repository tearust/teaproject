Using the TEA Party TApp as an example, the https://github.com/tearust/tapp-sample-teaparty/tree/demo-code/party-actor compiles to the [[actor]] that runs inside a [[hosting_CML]]. 

Since it's an [[actor]], it's loaded and runs inside the [[enclave]] (also called the [[mini-runtime]]).

The only thing that the back-end actor does is handle incoming requests.

This back_end_actor is different than the [[state_machine_actor]] which run inside the enclaves of [[State_Machine_Replica]]s. Those [[state_machine_actor]]s handle the [[queries]] and [[commands]] that directly interact with the [[State_Machine]]. In traditional web 2.0 applications, these are usually called **Stored Procedures** that run inside the database server.
