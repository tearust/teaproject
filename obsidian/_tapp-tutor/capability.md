**Capability** is a property when building a TApp actor. The developer needs to sign the actor executable with a list of capabilities. Each capability is a passkey to call a specific provider when it's loaded into the [[mini-runtime]].

The list of capabilities of any actor is public information. If can be verified by all TEA DAO members. 

If an actor is not signed with a specific capability, even if there's code in this actor trying to call the specific provider API, it will be rejected. Furthermore, a violation will be reported that may cause further punishment. 

The developer who signs a capability will need to carefully inspect if this capability is absollutely necessary. The more capabilities the developer signs, the more security concerns other users may raise.

