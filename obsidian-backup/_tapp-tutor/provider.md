Providers are static utility libraries inside of the [[mini-runtime]]. The providers are called by teh [[actor]]s inside the [[mini-runtime]]. Actors are WebAssembly code that can only run inside the Wasm virtual machine. But providers are native rust code that can run outside of the virtual machine. If you read the [[magic_of_wasm]] document, you'll know that WebAssembly is a very secure execution format that can run inside the Wasm virtual machine. On the other hand, running inside a virtual machine means it cannot call system functions directly. Assuming you're writing a Solidity smart contract, you'll know that you cannot call the OS API directly because the smart contract will be running inside the EVM. 

What if the actor code wants to call an OS function to send data over the network or to save a number to the [[state]]? That's when providers can step in to help.

# Providers security concern
There are many providers inside the [[mini-runtime]]. These providers are all writen by the TEA Project core team at the moment. Because provider code is native code that runs with OS privileges, it's much more powerful than the code inside of actors. Powerful also means more damage if abused. Actors' code cannot do too much damage because of its isolation and the limitations imposed by the virtual machine. But if the actor code call provider code, the actor can make big damage if misused. In order to mitigate this threat:

- For every type of system function, we developed a separate provider.
- The actor's developer needs to choose and sign which providers it will use. This is also called [[capability]].
- The capability information is stored as public data. If an actor is not supposed to use a provider but claimed it will, the DAO or end-user will reject this application from executing.
- All provider code is carefully designed and audited.

# Calling providers
All functions inside of providers are pure functional functions. That means they are **stateless**. The caller (from the actor) needs to send all necessary parameters with the function and will get the result (bytes) in the return value.

Every function has an OP_CODE. All input values and output values are Protobuf encoded. In most cases, the actor call to the provider is happening inside of the same encalve. There's no need for encryption and all calls are synced call.

# Error handling
TODO:
