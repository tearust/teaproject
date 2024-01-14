All [[State_Machine_Replica]] nodes run a layer1 client (either a full client or a light client). This layer1 client will notify layer2 when layer1 events are triggered. The layer2 runs a monitoring process that filters all events, only picking the events that are in the "waiting list" and then calling the layer2 [[state_machine_actor]] APIs. 

In the future, when the TEA Project is running above multiple layer1 main chains, there would be multiple blockchain listeners for each main chain.
