[Wikipedia](https://en.wikipedia.org/wiki/State_(computer_science)) defines state as the following: 
> In [information technology](https://en.wikipedia.org/wiki/Information_technology "Information technology") and [computer science](https://en.wikipedia.org/wiki/Computer_science "Computer science"), a system is described as **stateful** if it is designed to remember preceding events or user interactions;[1](https://en.wikipedia.org/wiki/State_(computer_science)#cite_note-1) the remembered information is called the **state** of the system.
> 

In a traditional cloud computing architecture, the database is most likely used as state storage. In the blockchain world, the whole blockchain is a giant distributed state machine. For example, Ethereum itself is a state machine. Everytime clients send transactions to update the state, every new block means a new updated state is released. 

In the TEA Project, we don't store the application state in the blockchain. Instead, the state is stored in a group of [[State_Machine_Replica]]s. We use a new [[consensus#Proof of Time|Proof of Time]] hardware consensus to achieve super fast speed (relative to traditional blockchain) and processing power without sacrificing security or scalability.  

Please keep reading the [[State_Machine]] and [[consensus]] for more details.
