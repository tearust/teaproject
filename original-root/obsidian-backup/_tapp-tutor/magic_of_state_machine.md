From a 10k foot view, all blockchains are nothing but different types of [[State_Machine]]s.  This machine accepts a user tx as input, and then executes some kind of logic (for example, a smart contract) to update the [[state]]. Every block is a new update of the state. Any node can rebuild the latest state by recalculating from the genesis block. This recalculation is also part of the validation process.

TEA Proejct is also a state machine, but a very different type of state machine. There's no block, there's no TPS, no smart contracts, nand no validators. It's actually more likely a distributed database. 

The smart contract is like the stored procedure in regular databases, but it's called the [[state_machine_actor]] in the TEA Project. It can do more than just the basic operations that smart contracts can do, and it's much faster because there are no block limitations. That means the state updates are continously updating the local state separately without stopping every few seconds waiting for consensus. There's also no block size limitations, beause there's no block at all.

To achieve this, the most important thing is the sequence of all transactions (sometimes called events) that have to be identical among all [[State_Machine_Replica]]s. No one gets more or less transactions, no one gets them in a different order. Otherwise, the state would no longer be synced among all nodes.

The sequence of the transactions are guaranteed by the [[conveyor]]. The algorithm is also called **proof of time**.

This unique way of thinking makes TEA Project a unique platform. Of course, this is based on the trust from layer1 and [[Remote_Attestation]]. Otherwise, any [[hosting_CML]] nodes can cheat the [[State_Machine_Replica]] with wrong [[GPS]] timestamps and cauase the whole system to stop working. 
