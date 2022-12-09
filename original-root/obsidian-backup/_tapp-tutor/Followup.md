The TEA Project [[State_Machine]] requires every event ([[commands]] or [[queries]]) to have a acurate and trusted timestamp attached. Because we make an allownace that the P2P network might be unreliable, messaging on the network has built-in redundancy. That means for any event, the [[hosting_CML]] has to send at least two identical messages to two different [[State_Machine_Replica]]s. The logic in the [[back_end_actor]] is single threaded, and the two identical messages will have different timestamps as they are sent one after another. To double-check that they're identical, we designed it such that a followup message will be sent right after any message is sent.

The information in these followup messages include:

- The hash of the event message just sent out.
- The actual timestamp of when that message was sent out.
- If the event message is a duplicated (redundant) message, use the timestamp of the first time it was sent (i.e don't use the timestamp of the duplicated/redundant message). 

Using this design, the multiple event messages will have an identical message body and identical followup messages. Because the timestamp (which is the only data that could be different) is set to the timestamp of the first message that was sent, the second (or any later) message's sent-timestamps are ignored.
