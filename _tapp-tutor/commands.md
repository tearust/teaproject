In contrast to [[queries]], commands can change the state in the [[State_Machine]]. 

In order to keep the consistency of the state machine, we cannot allow the hosting node to ask one state machine node to change its state directly. We have to put the change request - actually a command - to a [[conveyor]]. The conveyor algorithm will make sure all state machine nodes get the same sequence of all comands, and eventually update all of their states to the same new state.

Because it's a sync call, the caller (hosting node) cannot get the execution result of this command immediately. Instead, the caller will poll the result after a few seconds to get the result.

![5](https://user-images.githubusercontent.com/86096370/159343544-f349473c-19ba-4c51-a6cd-4442626eaa02.png)
![6](https://user-images.githubusercontent.com/86096370/159343552-d67709f1-f2cf-4651-8405-f0d9e6b41e4e.png)

![7](https://user-images.githubusercontent.com/86096370/159343554-53cd8bf5-eba3-40d8-889a-039766c39e9b.png)
