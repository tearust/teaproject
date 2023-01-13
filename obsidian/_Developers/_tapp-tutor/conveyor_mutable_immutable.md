## Conveyor belt: mutable vs inmutable areas

Every followup message gets converted to a tsid which references a txn. The tsid and not the txn itself is what actually is sent to the conveyor as the tsid is easier to sort. 

Each replica's conveyor belt has a mutable section at the front followed by an immutable section.

- **Mutable section**: transactions can be re-ordered in this section based on the earliest timestamp recorded in the tsid. Note that any particular replica's conveyor must receive both the transaction and its corresponding tsid within this mutable block of time. If either is missing, the tsid of the transaction is dropped from the conveyor before it reaches the next immutable section.
- **Immutable section**: after a tsid has been on the conveyor belt for a mutable period of time, the tsid passes on to the immutable section. Transactions referenced in the immutable section cannot be re-ordered; however, any conveyor's immutable section that's missing a tsid from other replicas will have the missing tsid added to its conveyor in the same relative order as the replica it synced with.

A consequence of this conveyor algorithm is that even though a particular replica will have to drop a late arriving transaction (arrives after mutable period of time and is unable to be placed in the immutable section), the replica's conveyor will still be able to add the tsid of the transaction to its immutable section through syncing with other replicas.

## Consensus on the transaction order

The end goal of the conveyor algorithm is to reach a consensus on the order of transactions. In the end, all replica conveyors should match the same order. This is achieved through each replica's immutable section of the conveyor. 

- Once at least 50% of all replicas agree on the transaction order in their immutable section, this will act as a successful vote on the transaction order contained in the immutable section.
- After a few sync intervals, the immutable sections of all replicas will reach consensus.
- Once consensus is reached on the order of transactions in the immutable section, the transactions pass to the execution point of the conveyor.
- From the execution point, the transactions are sent to the state machine actor.
- The state machine actor updates its state according to the transactions the replicas send to it.

![3](https://user-images.githubusercontent.com/86096370/159138357-b1c0729a-04e8-4ad6-87b4-b9b39cbf71fb.png)
