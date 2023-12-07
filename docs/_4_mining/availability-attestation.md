# Availability Attestation

## Private CML can earn public service mining rewards by monitoring other hosting CML

Private CML are not able to earn TEA revenue from hosting TApps the way hosting CML can. This is because private machines can't be reliably depended upon to have a public IP address. Instead, private CML can earn mining revenue through Availability Attestation (AA) by monitoring hosting CML machines. 

The AA process can be run on private CML-planted mining machines which are likely to be running within the home. The computer or embedded TEA device could be using a residential internet service provider as it doesn't need to have a publicly accessible IP. 

## The Availability Attestation (AA) process

A hosting CML may be listed as available to the TEA network but there's always the possibility it might go offline for whatever reason. Private CML mining machines earn AA rewards by monitoring the hosting CML nodes on the network. The AA process runs like this:

* The blockchain randomly selects a hosting CML mining machine for a private CML machine to monitor. 
* If the private CML finds that the hosting CML is either unavailable or isn't able to verify its integrity, then the private CML will report this to any other hosting CML. (In addition to integrity and availability, future epochs will have private CML verifying the timestamps from a randomly chosen hosting CML's GPS atomic clock.)
* If the randomly selected verifying hosting CML corroborates the private CML's report, then the offending hosting CML is taken offline.

## Availability Attestation (AA) at a more technical level

* At any given block, some private CML are randomly selected to run the AA algorithm. This involves sending requests to a randomly selected hosting CML node and waiting for a response. If there's no response after a predefined time limit, the private CML will report an **out-of-service** message to another hosting CML.
* When a hosting CML receives an out-of-service report, it then assumes the verifier role. This hosting CML starts the verification process by sending the same AA request to the suspected offline hosting CML. If there is no response, this hosting CML verifier sends a transaction to layer-1 (Ethereum blockchain) to confirm the report.
* The report is valid as long as there are a certain number of hosting CML that have sent the tx to layer11 to confirm the report. Layer11 will run blockchain logic to set the infringing hosting CML to offline mode and slash its mining deposit. Note that in order for the verification to work, at least 4 hosting CMLs need to be present and participating in the verification process. In a group of 4 hosting CML machines, 1 could be offline putting the other 3 in verifier roles. If there's only a group of 3 hosting CML and there are only 2 online machines to verify against the 3rd offending machine, the two hosting CML verifiers won't be enough to take the third hosting CML offline. The layer-1 blockchain needs a minimum of three hosting CML verifiers in consensus to confirm the transaction taking the reported hosting CML offline.

## Private CML can earn whether hosting CML is online or offline

Private CML performing AA are rewarded for reporting on a hosting CML mining machine that's gone offline after its report is verified by at least 3 hosting CML. Let's look at some reporting scenarios and how a reporting private CML is and isn't rewarded.

* **False positive**: There is currently no penalty for a private CML when it reports false positives. A private CML has limited chances to report false positives as its AA workload is randomly selected. There's a potential for a private CML to DDoS its assigned hosting CML mining machine in order to game the profit, but we can change the algorithm to penalize chronic-DDoSing private CML in the future if it becomes a problem.
* **Fails to report**: There is no penalty if a private CML fails to report an out-of-service hosting CML. But also they won't get a reward, so that should be incentive enough not to do this.
* **Hosting CML goes offline**: If the private CML notices a hosting CML is offline, the private CML will earn the successful report reward when its report is corroborated by 3 other hosting CML.
* **Hosting CML never goes offline**: Ideally we'd like to have 100% uptime from our hosting CML nodes, but that would leave no opportunity to report offline hosting CML machines for the C Availability Attestation miners. We deal with this scenario by implementing a **fisherman algorithm** where hosting CML are randomly selected to be fishermen. A healthy hosting CML will not respond to an AA request if it's been chosen as a fisherman, making it look *as if they are unreachable*. The private CML will report this hosting CML, and other hosting CML will verify and send a layer-1 tx to layer-1 to confirm that the private CML report was correct. It will not send a normal report confirmation in this instance (which would knock the reported hosting CML offline), and instead reward the private CML for doing its job.

## Availability Attestation Reward Amounts

The AA reward for private CML is given by the following function:

`(base reward rate) * (current private CML performance) / (peak private CML performance)` 

Note that there are two different base reward rates:

* The base reward rate for a successful offline report.
* The base reward rate for a successful "fisherman" report. 

A successful offline report is rewarded a higher amount compared to a successful fisherman report.

For example, if the base reward rate for a successful offline report was 100T, and the fisherman base reward rate was 1T, then a private CML with power level 5000 (peak power level of 10,000) at the time of the report would earn the following:

* 100T\*.5 = 50T for a successful offline report.
* 1T\*.5 = .5T for a successful fisherman report.
