# Miner's portal

Please note this TApp has no mobile UI, you will need to use computer web browser to launch.

Miners can oversee their machines and CMLs through this TApp.

To commence mining, you'll require both a Machine ID and a CML.


## Machines

The Machine ID serves as a unique identifier for the hardware engaged in mining. As of December 2023, TEA Project exclusively supports AWS Nitro hardware. As there is no means to extract the secured hardware ID from AWS Nitro, feel free to generate a random ID (a Hex string) for your machine, ensuring its uniqueness.

### Register machine id

![[Pasted image 20231219114913.png]]

Ensure that the Machine ID consists of 64 hex characters preceded by the "0x" prefix. The total length should be 66 characters.

![[Pasted image 20231219115012.png]]

Once the new machine id is accepted, you can see your machine id in the list.


### Transfer machine 

You can be transferred to others.

![[Pasted image 20231219115035.png]]

## Mining

### CMLs list

Under "Mining" tab, you can find all your CMLs. 

![[Pasted image 20231219125553.png]]

Click for more detail on your CML

![[Pasted image 20231219125612.png]]

For more about CML NFT, please go to [[_3_token/cml-tokens/README| CML mining token]]

### Actions

There are three action buttons:

- ** Plant**: Plant this CML seed to an empty machine to start mining
- **Unplant**: Stop mining, and remove the CML from the machine
- **View miner's logs**: Review logs


