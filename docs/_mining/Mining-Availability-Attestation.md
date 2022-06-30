# C CML can earn public service mining rewards by monitoring other B mining CML

C CML are not able to earn TEA revenue from hosting TApps the way B CML can. This is partially because C seeds are not as powerful, but mostly because C machines can't be reliably depended upon to have a public IP address. Instead, C CML can earn mining revenue through Availability Attestation (AA) on B CML mining machines. 

The AA process allows C CML-planted mining machines to run on local Ubuntu computers (or perhaps a Ubuntu virtual machine running in Windows or Mac). The computer could be using a residential internet service provider as it doesn't need to have a publicly accessible IP. 

# The Availability Attestation (AA) process

A TApp's availability becomes impacted when any of the B CML hosting it go offline. C CML mining machines earn AA rewards by monitoring the B CML mining on the network. The AA process runs like this:

* The blockchain randomly selects a B CML mining machine for a C CML mining machine to monitor. 
* If the C CML finds that the B CML is either unavailable or isn't able to verify its integrity, then the C CML will report this to any other B CML. (In addition to integrity and availability, future epochs will have C CML verifying the timestamps from a randomly chosen B CML's GPS atomic clock.)
* If the randomly selected verifying B CML corroborates C CML's report, then the offending B CML is taken offline.

# Availability Attestation (AA) at a more technical level

* At any given block, some C CML are randomly selected to run the AA algorithm. This involves sending requests to a randomly selected B CML mining machine and waiting for a response. If there is no response after a predefined time limit, the C CML will report an **out-of-service** message to another B CML.
* When a B CML receives an out-of-service report, it then assumes the verifier role. This B CML starts the verification process by sending the same AA request to the suspected offline B CML. If there is no response, this B verifier sends a transaction to layer1 to confirm the report.
* As long as there are a certain amount of B CML send the tx to layer1 to confirm the report. Layer1 will run blockchain logic to set the infringing B CML to offline mode and slash its mining deposit. Note that in order for the verification to work, at least 4 B CMLs need to be present and participating in the verification process. In a group of 4 B CML mining machines, 1 could be offline putting the other 3 in verifier roles. If there's only a group of 3 B CML and there are only 2 online machines to verify against the 3rd offending machine, the two B CML verifiers won't be enough to take the third B CML offline. The layer1 blockchain needs a minimum of three B CML verifiers in consensus to confirm the transaction taking the reported B CML offline.

# Benefits for C CML - earn whether B CML is online or offline

C CML performing AA is rewarded by reporting on a B CML mining machine that's gone astray after its report is verified by at least 3 B CML. Let's look at some reporting scenarios and how a reporting C CML is and isn't rewarded.

* **False positive**: There is currently no penalty for a C CML when it reports false positives. A C CML has limited chances to report false positives as its AA workload is randomly selected. There is a potential for a C CML to DDoS its assigned B CML mining machine in order to game the profit, but we can change the algorithm to penalize chronic-DDoSing C CML in the future if it becomes a problem.
* **Fails to report**: There is no penalty if a C CML fails to report an out-of-service B CML. But also they won't get a reward, so that should be incentive enough not to do this.
* **B CML goes offline**: If the C CML notices a B CML is offline, the C CML will earn the successful report reward when its report is corroborated by 2 other C CML.
* **B CML never go offline**: Ideally we'd like to have 100% uptime from our B CML hosting miners, but that would leave no opportunity to report offline B CML machines for the C Availability Attestation miners. We deal with this scenario by implementing a **fisherman algorithm** where B CML are randomly selected to be fishermen. A healthy mining B CML will not respond to an AA request if it's been chosen as a fisherman, making it look *as if they are unreachable*\*. The C CML will report this B CML, and other B CML will verify and send a layer1 tx to layer1 to confirm that the C CML report was correct. It will not send a normal report confirmation in this instance (which would knock the reported B CML offline), and instead reward the C CML for doing its job.

# Availability Attestation Reward Amounts

The AA reward for C CML is given by the following function:

`(base reward rate) * (current C CML performance) / (peak C CML performance)` 

Note that there are two different base reward rates:

* The base reward rate for a successful offline report.
* The base reward rate for a successful "fisherman" report. 

A successful offline report is rewarded a higher amount compared to a successful fisherman report.

For example, if the base reward rate for a successful offline report was 100T, and the fisherman base reward rate was 1T, then a C CML with power level 5000 (peak power level of 10,000) at the time of the report would earn the following:

* 100T\*.5 = 50T for a successful offline report.
* 1T\*.5 = .5T for a successful fisherman report.
