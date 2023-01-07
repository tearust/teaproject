This actor is the TApp's actor that's loaded into the [mini-runtime](mini-runtime.md) of the [State_Machine_Replica](State_Machine_Replica.md). It handles the [txn](txn.md) (also called command) to update the state. 

Only the [txn](txn.md) that's moved to the last execution point of the [conveyor](conveyor.md) can be picked up and executed in this actor.
