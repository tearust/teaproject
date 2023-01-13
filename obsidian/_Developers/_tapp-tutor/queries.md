Query is a "read-only" inquiry to read a state value from the state machine.

Because TEA state machine nodes are consistent with each other (i.e. they have **strong consistency**), the hosting node can access any other state machine node to query information. The result would be the same.

There's no wait time associated with queries. The state machine can always check its current state and respond back to the hosting node.

![8](https://user-images.githubusercontent.com/86096370/159343556-a4fc7d94-7630-4d04-be50-4e9ce704ed0f.png)

# Tsid in the response
Although the [[State_Machine]] exhibits **strong consistency**, there might be a slight delay across [[State_Machine_Replica]]s. Because of this possible delay, when you query a particular replica, you may get the state that's differs from the **most recent state**. 

For example, when you query the TEA Party token price **now** to two different [[State_Machine_Replica]]s, the replica A just completed a txn marked (tsid as) at 1000. It will respond to you with the TEA party token price at the time of 1000. But replica B may be a little laggy, that it only processed the txn marked (tsid is) at 999. So it will respond to you with the price at the time of 999 instead of 1000. If there is a change between timestamp 999 and 1000, you may get two different prices.

To indicate this specifically, every time the state machine responds with a value, it will attach a timestamp, meaning that the vlaue is valid as of that timestamp.

The caller ([[hosting_CML]]) can determine is the tsid is too old or not. It can then decide to query again or accept it as is.
