In the TEA Party, the messages are stored in an [OrbitDB](http://orbitdb.org) database.
OrbitDB is a non-relational database running on top of IPFS.

Read this for more details on [[get_started#Storage| all storage options]]

# Security
For TEA Party's public messages, there's no need to encrypt.

Messages are stored in [[OrbitDb]] (and eventually in IPFS) in plain text.

But private messages aren't saved in plain text. The hosting nodes will encrypt the message using the [[App_AES_Key]] and then save the cypher to OrbitDB. 

Because only TEA Party hosting nodes have the [[App_AES_Key]] in their own enclave, other apps or users cannot get the content of these messages.

## Cost
OrbitDB /IPFS is very cheap compared to using the [[State_Machine]] which exclusively uses RAM to store the state. For more details, please read [[OrbitDb#Cost]].


