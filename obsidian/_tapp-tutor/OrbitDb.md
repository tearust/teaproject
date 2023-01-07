OrbitDb (https://orbitdb.org/) is a Peer-to-Peer Database for the Decentralized Web
> [OrbitDB](https://github.com/orbitdb/orbit-db) is a serverless, distributed, peer-to-peer database. OrbitDB uses [IPFS](https://ipfs.io/) as its data storage and [IPFS Pubsub](https://github.com/ipfs/go-ipfs/blob/master/core/commands/pubsub.go#L23) to automatically sync databases with peers. It’s an eventually consistent database that uses [CRDTs](https://en.wikipedia.org/wiki/Conflict-free_replicated_data_type) for conflict-free database merges making OrbitDB an excellent choice for decentralized apps (dApps), blockchain applications, and offline-first web applications.

In the TEA Project, every [[hosting_CML]] has an OrbitDb instance running **outside** of the enclave. 

OrbitDb is used to store large data blobs. OrbitDb provides limited non-relational database features but at a much lower cost. For a relational database, developers can use [[GlueSQL]]. For more essential account balance (money) data, we'd suggest using [[state]] instead.

See [[get_started#Storage| the storage section]] for a more detailed comparison.

# Privacy protection
IPFS is open to the public. Anything stored in the IPFS can be accessed by anyone. OrbitDB is no exception. How do we protect the data in the OrbitDB? We use the [[App_AES_Key]] 

The data used in one applicaiton is encrypted using this application AES key inside enclave. When the data is saved to the OrbitDB, it has been encrypted. It will be decrypted when again loaded into the enclave by the same application. Other application cnanot decrypt because they do not have such [[App_AES_Key]].

The [[App_AES_Key]] is stored inside the [[State_Machine]] which is consider the top security of the whole TEA Project network. When a new applicaiton host instance starts, it will request such a AES key to the [[State_Machine]]. After a restricted scurity check, the instance can receive such AES key. Because the AES key only live inside enclave (both state machine or hosting nodes.), it is unknown to outside world.

# Sync
For every TApp, there are multiple hosting nodes. Every node has their own OrbitDB instance running inside the node (outside of the [[enclave]]). They sync with each other using the standard OrbitDB sync algorithm. Please read https://orbitdb.org for more details on the sync method.  

Because all of these instances share the same [[App_AES_Key]], the data is the same across all nodes as they take advantage of the duplication provided by IPFS/OrbitDB.

# Cost
Since OrbitDB lives outside of the [[enclave]] and is stored on a hard disk (actually IPFS), using it would be much cheaper compared to the [[State_Machine]] (whose data stays inside the RAM of the [[enclave]]). Of course, the [[State_Machine]] would be a much more limited resource and be much more expensive than hard disk space outside of the enclave.

# Eventual consistency
OrbitDB provides [**eventual consistency**](https://en.wikipedia.org/wiki/Eventual_consistency), which means you could get temporary inconsistency across all nodes. Your TApp has to handle this possible scenario in its business and UI logic.

If your data is very time sensitive and requires [**strong consistency**](https://en.wikipedia.org/wiki/Strong_consistency), please use the more expensive [[State_Machine]] instead.
