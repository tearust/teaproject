This actor is the TApp's actor that's loaded into the [[mini-runtime]] of the [[State_Machine_Replica]]. It handles the [[txn]] (also called command) to update the state. 

Only the [[txn]] that's moved to the last execution point of the [[conveyor]] can be picked up and executed in this actor.
