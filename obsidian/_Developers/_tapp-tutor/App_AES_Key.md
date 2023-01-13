Every TApp has an AES key. 
This AES key is used to encrypt/decrypt any data stored to hosting nodes' local IPFS or OrbitDB databases.

## Generating the app's AES key
When a TApp is first created in the TAppStore, the GenreateAesKeyTxn is created and then executed in the [[State_Machine]].

During execution, a random AES key is generated in the state.

The state machine algorithm can keeps the random AES key consistent among all state machine nodes.

## A hosting node's access to this AES key
When a hosting node starts to host a TApp, the TApp actor can access the AES key from the state machine. The state machine only sends the AES key if the requestor is the TApp's actor.

