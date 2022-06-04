In this section, we'll walk through the TEA Party application's sample code. 

The steps are:

- Clone the code to local.
- Install the build tools.
- Understand the folder structure.
- Understand the compile workflow.
- Run it.

# Code location and structure

Start by cloneing the following GitHub repo to your local machine:
https://github.com/tearust/tapp-sample-teaparty

There are 4 folders (click the following links for more details):

- [[party-fe]]: This is the [[front_end]].
- [[party-actor]]: This is the [[back_end_actor]].
- party-share: This is the common data structure or library that shared by both the [[back_end_actor]] and the [[state_machine_actor]].
- [[party-state-actor]]: This is the [[state_machine_actor]].


# Workflow

## Load the UI 

Any user can launch a TApp by clicking on one of the [[hosting_CML]]s urls (there's no domain used when launching TApps). Picking any of the urls will work exactly the same so you can choose the one with least network latency. The URL is nothing but an IPFS CID.

Note: This is a brief diagram. The real communication is more complicated than this.
```mermaid
sequenceDiagram
	participant A as Front end
	participant B as Back end
	participant C as IPFS/OrbitDB
	participant D as State machine receiver
	participant E as State machine conveyor
	participant F as State machine actor
	participant G as State
	participant H as GlueSQL
	A->>+B: http request to load ipfs cid
	B->>-C: ipfs load cid
	C->>+B: the html/css/js code that the request cid refers to
	B->>-A: response html/css/js front end code
	A->>A: render the browser. show the UI
	
```

## Query the state

Accounting information is stored in the state (e.g. when querying the balance of a user's TApp account.)

Querying the state can return the result without having to wait in conveyor queue. But the communication is still async, so additional queries for more results are still needed which is not shown in the diagram. You can see the details on additional queries at [[party-fe#Workflow]].

Note: This is a brief diagram. The real communication is more complicated than this.
```mermaid
sequenceDiagram
	participant A as Front end
	participant B as Back end
	participant C as IPFS/OrbitDB
	participant D as State machine receiver
	participant E as State machine conveyor
	participant F as State machine actor
	participant G as State
	participant H as GlueSQL
	A->>B: http request to query account balance of a user
	B->>D: send query to at least two State Machine Replicas
	D->>+F: queries do not require conveyor wait, it can query state immediately
	F->>+G: actor query state
	G->>-F: state response to actor
	F->>-D: send back the account balance response
	D->>B: send back the account balance response
	B->>A: send back the account balance response
	A->>A: render the browser. show the account balance on the UI
	
```
## Send a command that changes the state

Commands are more complicated in that certain precautions must be taken before they're allowed to change the state. Like any other distributed state machine, we have to make sure the state in all the [[State_Machine_Replica]]s are consistent. We use the [[conveyor]] algorithm to sort the commands by their timestamp and are executed in identical order across all replicas.

The following diagram demonstrates the workflow of how a simple transfer txn command is handled. Note that this diagram is a simplifed verison. The full version can be found here: [[party-fe#Workflow]]

```mermaid
sequenceDiagram
	participant A as Front end
	participant B as Back end
	participant C as IPFS/OrbitDB
	participant D as State machine receiver
	participant E as State machine conveyor
	participant F as State machine actor
	participant G as State
	participant H as GlueSQL
	A->>B: http request to transfer fund . (eg. Alice send 10T to Bob)
	B->>B: genreate the transfer txn command in back end actor
	B->>D: send command to at least two State Machine Replicas
	D->>E: put the command txn on the conveyor
	E->>E: re-order all txns in the queue during the grace period
	E->>+F: time is up. the command is sent to state machine actor to execute
	F->>+G: state machine actor execute the txn and update the state
	G->>-F: state commited successful. response ok
	F->>-D: response ok
	D->>B: response ok
	B->>A: response ok
	
```

## Running SQL queries

Running SQL queries is almost the same as running a query against the state. The only difference is that we replace the state with the GlueSQL instance. Note: SQL queries are not allowed to change the state. Only `Select` statements are allowed in SQL queries.

```mermaid
sequenceDiagram
	participant A as Front end
	participant B as Back end
	participant C as IPFS/OrbitDB
	participant D as State machine receiver
	participant E as State machine conveyor
	participant F as State machine actor
	participant G as State
	participant H as GlueSQL
	A->>B: http request to query something that stored in SQL database
	B->>B: generate SQL scripts
	
	B->>D: send SQL scripts to at least two State Machine Replicas
	D->>+F: queries do not require conveyor wait, it can execute in state machine actor that query GlueSQL immediately
	F->>+H: run SQL scripts in GlueSQL instance.
	H->>-F: response query result
	F->>-D: send back the query result
	D->>B: send back the query result
	B->>A: send back the query result
	A->>A: render the browser. show the result on UI
	
```

## Send SQL scripts to change SQL database

Rather than `select`, many SQL statements will change the database. They are all considered **commands**. The workflow is almost the same as the state command, with the state being replaced by the GlueSQL instance.

```mermaid
sequenceDiagram
	participant A as Front end
	participant B as Back end
	participant C as IPFS/OrbitDB
	participant D as State machine receiver
	participant E as State machine conveyor
	participant F as State machine actor
	participant G as State
	participant H as GlueSQL
	A->>B: http request to transfer a NFT . (eg. Alice send a CML to Bob)
	B->>B: genreate the transfer SQL scripts in back end actor
	B->>D: send command to at least two State Machine Replicas
	D->>E: put the command txn on the conveyor
	E->>E: re-order all txns in the queue during the grace period
	E->>+F: time is up. the command is sent to state machine actor to execute
	F->>+H: state machine actor execute the txn and update the GlueSQL database
	H->>-F: GlueSQL commited successful. response ok
	F->>-D: response ok
	D->>B: response ok
	B->>A: response ok
	
```

## Load / save NoSQL data with OrbitDB

Because the state and GlueSQL are memory based distributed databases, they're very expensive when used to store large amounts of data. TApps needing to store large amounts of data should use either OrbitDB (structured data) or IPFS (blob data/ files).

OrbitDB and IPFS live inside the [[hosting_CML]], so the [[State_Machine_Replica]]s are not involved in this workflow. 

```mermaid
sequenceDiagram
	participant A as Front end
	participant B as Back end
	participant C as IPFS/OrbitDB
	participant D as State machine receiver
	participant E as State machine conveyor
	participant F as State machine actor
	participant G as State
	participant H as GlueSQL
	A->>B: Load the messages list in TEA Party
	B->>C: load messages from OrbitDB![[bob-digest.json]]
	C->>B: respones the list of messages body
	B->>A: messages body list![[bob-digest 1.json]]
	A->>A: show the message content on the UI
```

## Combination of SQL and NoSQL
The diagram above shows a common use case that loads all messages. But in many cases, the ids (index) of the OrbitDB is stored in GlueSQL, so it's very common to first have to query GlueSQL to get the IDs. After successfully querying GlueSqL for the IDs, then we can query OrbitDB using the IDs to retrieve the actual data.

```mermaid
sequenceDiagram
	participant A as Front end
	participant B as Back end
	participant C as IPFS/OrbitDB
	participant D as State machine receiver
	participant E as State machine conveyor
	participant F as State machine actor
	participant G as State
	participant H as GlueSQL
	A->>B: Load the messages list that I have starred in TEA Party
	B->>B: generate a SQL scripts that query for all message IDs that I starred in the GlueSQL
	B->>D: Send query txn. 
	D->>F: queries do not need conveyor, it go to state machine actor to execute immediately
	F->>H: run the SQL scripts for IDs of messages that I starred
	H->>F: response the message IDs
	F->>D: response the message IDs
	D->>B: response the message IDs
	B->>C: load messages from OrbitDB using the IDs just received from GlueSQL
	C->>B: respones the list of messages body that I starred
	B->>A: messages body list that I starred
	A->>A: show the message content on the UI. all of them are messages that I starred
```

The above diagram shows the combination of SQL and NoSQL. 

# Read ruther details on each of the three parts

Click on any of the following links for more details:
- Code walkthrough for [[party-fe]]. 
- Code walkthrough for [[party-actor]]. 
- Code walkthrough for [[party-state-actor]]. 

# Run it

TODO: