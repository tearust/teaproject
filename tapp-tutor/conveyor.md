# Conveyor

The conveyor is an algorithm to make sure all state machine nodes have the same order of transactions. This is necessary as there will occassionally be conflicts due to network latency and the redundancy of transactions sent to multiple replicas. The conveyor algorithm is designed to shuffle the transaction order, which includes merging duplicate transactions and re-ordering transactions according to their timestamps.

* Any particular hosting CML node shouldn't change the state of the state machine directly.
* It requests to change the state by sending its transactions (along with followup messages) to the conveyor belts of two or more replicas.
* After a set period of time, the conveyor belt ensures that transactions have reached a steady order before all state machine actors update to the same new state.
* The updated app state is sent back to the application which updates its interface accordingly.

TApp developers are responsible for sending out their application's transactions and followup messages to a minimum of 2 replicas (this is the default wheen using the API). More replicas may be chosen by the developer in certain instances according to the importance of the transaction to their app.

## Workflow of the conveyor belt algorithm

The hosting CML node receives user interaction, generates a hash of the transaction and sends it to the conveyor belt of two or more replicas. The timestamp of this send was recorded but not able to be included in the transaction, therefore a followup message must be sent out that includes:

* the hash of the previously sent transaction.
* the timestamp of the previously sent transaction.
* if this is not the first followup message (i.e. the transaction reported to other replicas' conveyor belts has already issued their followup messages), then the followup message will also record the existing timestamps as recorded in the other replicas' followup messages.

![1](https://user-images.githubusercontent.com/86096370/159138351-9230a110-1ff3-483a-9457-7581b36706e8.png)

![2](https://user-images.githubusercontent.com/86096370/159138355-4f6d7c6d-e037-4046-8a87-fc4a85a0e11d.png)

# Conveyor: Mutable vs Immutable

## Conveyor belt: mutable vs inmutable areas

Every followup message gets converted to a tsid which references a txn. The tsid and not the txn itself is what actually is sent to the conveyor as the tsid is easier to sort. 

Each replica's conveyor belt has a mutable section at the front followed by an immutable section.

* **Mutable section**: transactions can be re-ordered in this section based on the earliest timestamp recorded in the tsid. Note that any particular replica's conveyor must receive both the transaction and its corresponding tsid within this mutable block of time. If either is missing, the tsid of the transaction is dropped from the conveyor before it reaches the next immutable section.
* **Immutable section**: after a tsid has been on the conveyor belt for a mutable period of time, the tsid passes on to the immutable section. Transactions referenced in the immutable section cannot be re-ordered; however, any conveyor's immutable section that's missing a tsid from other replicas will have the missing tsid added to its conveyor in the same relative order as the replica it synced with.

A consequence of this conveyor algorithm is that even though a particular replica will have to drop a late arriving transaction (arrives after mutable period of time and is unable to be placed in the immutable section), the replica's conveyor will still be able to add the tsid of the transaction to its immutable section through syncing with other replicas.

## Consensus on the transaction order

The end goal of the conveyor algorithm is to reach a consensus on the order of transactions. In the end, all replica conveyors should match the same order. This is achieved through each replica's immutable section of the conveyor. 

* Once at least 50% of all replicas agree on the transaction order in their immutable section, this will act as a successful vote on the transaction order contained in the immutable section.
* After a few sync intervals, the immutable sections of all replicas will reach consensus.
* Once consensus is reached on the order of transactions in the immutable section, the transactions pass to the execution point of the conveyor.
* From the execution point, the transactions are sent to the state machine actor.
* The state machine actor updates its state according to the transactions the replicas send to it.

![3](https://user-images.githubusercontent.com/86096370/159138357-b1c0729a-04e8-4ad6-87b4-b9b39cbf71fb.png)

## Sending the updated state back to the apps

The successfully confirmed transactions have updated the current state of the app. These state changes must now be sent back to the app from where they first came. The final workflow where the state changes are reflected back in the actual app look like this:

1. After the immutable section of the replicas' conveyors has reached a consensus, an executable actor sends the transactions to the state machine actor in the replica.
1. The state machine actor deals with the possibility of failed transactions:

* If it's successful, then modify / update the app state.
* If the transaction is unsuccessful, then issue an error message and don't modify the state.

3. A notification on the result of the previous process, either a **success** message or an **error** message, is then sent back to the original application.
3. If the application wants to update its UI to reflect the updated state for transactions that successfully updated the state, then the app must use issue [queries](queries.md) to get the updated state.

![4](https://user-images.githubusercontent.com/86096370/159138361-4a7a5769-5d62-4602-9216-4453b27a39ae.png)
