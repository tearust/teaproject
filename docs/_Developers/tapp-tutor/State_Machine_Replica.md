# State Machine Replica

[State_Machine](State_Machine.md) is the database tier that contains multiple replications. Every replication is a **State Machine Replica**.

Every replica is a standalone state machine CML node. It syncs with the other state machine CML nodes. 

Our [Proof_of_Time](consensus.md#proof-of-time) algorithm guarantees that all state machine replicas run all transactions (or any called commands) at the same sequence. As a result, the same state will be kept among all replicas.
