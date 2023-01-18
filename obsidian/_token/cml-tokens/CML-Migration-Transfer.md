# CML Transfers
The **Migrate miner** button is used to move a CML tree to a new machine. This might be because there's been a change to the physical mining machine (hardware failure or perhaps a cloud provider is proving unreliable). The migration function allows the user to plant the CML tree into a different machine and continue mining.

Note that before migrating, the mining machine with the CML to be transferred must be shut down first. The CML could also be unplanted first to avoid any offline penalties but this is up to the user to decide.

Users can click on the CML ID in their wallet to show the CML detail screen. The following buttons near the top include:
<img width="1130" alt="camellia_options" src="https://user-images.githubusercontent.com/86096370/141043047-731de60f-3fca-4f28-9cd7-76733de77be7.png">

The two buttons useful for migrating a CML are the following:
- **Migrate miner** - Use this button to migrate your CML to a new machine (e.g. your old machine provider has unreliable uptime). The machine will have to be shut down first before this button becomes active. 
- **Shut down miner** - Shut down an active miner before beginning the migration process.

# The CML Migration Process
After shutting down your mining CML, click **Migrate miner**. You'll be presented with this screen:

<img width="1166" alt="Screen Shot 2021-11-10 at 7 53 42 PM" src="https://user-images.githubusercontent.com/86096370/141234158-35ee8e52-b8bb-4847-b95c-a067838e16d6.png">

This is the same process you have to do when planting a CML. Run the script to get the **machine id** and **layer1 account** (Polkadot address), then click **Next step**.

The dialog will require 3 items to be filled out besides the CML ID:
<img width="766" alt="Screen Shot 2021-11-09 at 3 23 49 PM" src="https://user-images.githubusercontent.com/86096370/141022713-6a11754d-e7c5-41b4-a513-7104c1253d98.png">

- The **Machine ID** and **Polkadot wallet (SS88) address** are copied from the last step.
- The **Miner IP** is from the new machine you are transferring to.

Moving onto the final **Migrate** step, you'll have to copy the shell script command and run it on the terminal of your new mining machine. After the script has finished running (the terminal output finishes with a `docker start completed` message), click the **Migrate** button. 

![Screenshot from 2021-11-10 20-02-59](https://user-images.githubusercontent.com/86096370/141237062-55f42031-3ba0-42df-9fff-9f3ab89cc754.png)

And don't forget to start up your miner after you're done migrating.

## CML Transfer for Marketplace Sales

The owner of a CML is the only one who can commit a migrate transaction for it. If the CML is sold, only the new owner can trigger the migration event. The new owner runs the migrate command to bring their newly bought CML to their own machine. If the new buyer doesn't migrate the CML to their own hardware, the previous owner (seller) will continue earning revenue from this CML as long as they keep their machine running. So when the new owner issues a **Shut down miner** command, they're really stopping the CML from mining on the machine and not physically shutting down the mining hardware.