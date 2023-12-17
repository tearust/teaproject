# How to CML Mine
Contestants can now use their own computer hardware to mine on the TEA network. This will require running an installation script to setup your mining machine. 

You'll need the following to start mining:

- A defrosted CML seed to plant into the mining machine. 
- An amount of TEA to fund the creation of your initial CML investment tokens.
- A mining machine to host the CML.

## Obtaining a CML
A Camellia seed (CML) is an NFT that gives mining rights when planted into a machine. The lifespan of a Camellia seed varies from a few weeks during testnet to approximately 2 years after mainnet launches. Camellia seeds can be purchased through the **Seed Auction** TApp in the TApp Store wallet. 

## CML Nodes Can Earn Gas Fees and Public Service Rewards

When a CML is chosen by an enduser to host a TApp, the CML owner will earn the gas fee that the enduser pays. The actual amount earned goes to the bonding curve of the CML's investment token.

When an enduser pays a gas fee to use the services of a CML miner to host a TApp, the gas fee gets distributed as follows:

- Theta % (chosen by the miner when they setup their CML) goes directly to the miner's wallet.
- The rest goes to the bonding curve of the miner's CML token. This is like a dividend that's distributed according to how many tokens any user holds of that particular CML.

A CML miner will also earn public service rewards (like remote attestation) as a result of helping the ecosystem run smoothly. 

## Minimum Mining Machine Requirements - OS
The mining machine installation scripts were designed to be run on Ubuntu. The script has been tested successfully on Ubuntu versions 18.04, 20.04, and 22.04 and may run on other Ubuntu versions as well. 

## Minimum Mining Machine Requirements - Hardware
- **CML mining machines** must have a publicly-reachable IP address. You can use your home computer (provided you have shell access to run docker and have [a way to get an IP address](https://help.edovia.com/hc/en-us/articles/115010872388-Making-your-computer-reachable-remotely-without-Screens-Connect) that is reachable from the outside world). For most people it will be easiest to use a cloud virtual server provider. 

- Minimum ram requirement for mining machine = 1gb.

## Guide to Planting a CML Seed into a Mining Machine
The following guide will use [DigitalOcean's](https://digitalocean.com) 2GB droplet with Ubuntu 20.04 as the operating system (although 1G of ram is enough).

#### Create your droplet

<img width="1040" alt="_12" src="https://user-images.githubusercontent.com/86096370/137818245-23ef2364-671e-4a39-8965-5b49a0304c49.png">

#### Select Ubuntu for the distribution

<img width="798" alt="_13" src="https://user-images.githubusercontent.com/86096370/137818248-affd3718-a1a6-4b77-8e08-53d0ddcde1ae.png">

#### Choose the droplet plan

We'll choose a 2GB droplet with shared CPU for our mining machine:

<img width="967" alt="Screen Shot 2021-11-05 at 3 34 04 PM" src="https://user-images.githubusercontent.com/86096370/140590339-065a0235-e5f3-4fa5-be93-5aaaa1aa07a5.png">

#### Choose a datacenter

<img width="1157" alt="_15" src="https://user-images.githubusercontent.com/86096370/137818255-a739e70a-7258-4239-ad5c-ab065868ea70.png">

#### Choose how you'll authenticate with your droplet
Using ssh key authentication is more secure method of authentication. The following screenshot shows selecting password authentication: 

<img width="1138" alt="_16" src="https://user-images.githubusercontent.com/86096370/137818256-0dff4d25-6239-4e9e-aff4-9b6dad3916cd.png">

#### After creating your droplet, copy its IP address:

<img width="732" alt="Screen Shot 2021-11-05 at 3 33 08 PM" src="https://user-images.githubusercontent.com/86096370/140590338-999e13cb-dea8-4710-9c1e-b448722876ea.png">

You can now login to your remote droplet using the terminal application on your home computer:
`ssh root@ipaddress`
where `ipaddress` is the IP address you've just copied to your clipboard from the Digitalocean dashboard. 
It will prompt you to enter your password if you're using password authentication.

Your first login will also ask `Are you sure you want to continue connecting (yes/no/[fingerprint])?` to which you can answer `yes`.

#### Turn on swap memory of the Digital ocean droplet
By default, digital ocean set the memory swap to off in order to save the life of their SSD drive. We recommend turning it on. It will potentially prevent the OOM (out of memory) errors which could cause your server to crash. Please use the following instructions to enable swap memory: 
[Digital ocean instruction](https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04)

#### Plant your Your CML seed

<img width="1150" alt="St-1" src="https://user-images.githubusercontent.com/86096370/137788027-63f90793-f89d-43a5-808f-22bdb74bc6a7.png">

#### Click the copy script button to copy it to your clipboard

<img width="1262" alt="Screen Shot 2021-11-09 at 6 11 56 PM" src="https://user-images.githubusercontent.com/86096370/141036993-e2f8f5a6-f6a7-472c-925a-e7f3e03a78ca.png">

Run this command in the terminal of your mining machine. The output the script will give you includes the **machine id** as well as the Polkadot wallet address which you can copy down:

![step_1 88826e4b](https://user-images.githubusercontent.com/86096370/141545774-de4e826c-d94e-48ed-a9a7-f6fdfa2345ad.jpg)

After you are done running the initial script on your mining machine, click the **Next step** button in the browser wallet.

#### Fill in the required mining machine information
You'll need to fill in the machine id, Polkadot wallet address (SSS8), and the mining machine's IP in this screen:

<img width="1129" alt="Screen Shot 2021-11-09 at 6 41 12 PM" src="https://user-images.githubusercontent.com/86096370/141040357-1b056c36-fa58-427d-8627-1a0d6a17cb50.png">

#### Copy the install scripts to your clipboard

There are two install scripts that you must run one after the other:

<img width="1152" alt="Screen Shot 2022-03-10 at 12 10 27 PM" src="https://user-images.githubusercontent.com/86096370/157746661-fd6c5571-778d-4395-98a2-59b86078ba86.png">

#### Use your terminal application to ssh into your droplet and run the installation scripts

Paste the 1st script and press `return`. The script will download and install various packages and should complete within a minute.

<img width="687" alt="St-4" src="https://user-images.githubusercontent.com/86096370/137788045-a7376b43-1a6f-45d6-9a1c-0014f1b7d9d7.png">

Wait for the first install script to finish and then go back and run the second installation script.

#### After the installation has finished, click "Verify my miner" in the TEA browser wallet

<img width="1295" alt="St-4 1" src="https://user-images.githubusercontent.com/86096370/137788048-6870ff36-5024-4dce-a374-6c0b6f46534e.png">

#### Click the resulting success link
The success link is confirmation that your miner was installed correctly. Click the link to continue:

<img width="965" alt="St-5" src="https://user-images.githubusercontent.com/86096370/137788050-6ff2081c-3b01-42cf-8c03-8ec5acc78fc0.png">

#### Click the "Activate miner" button

<img width="778" alt="St-6" src="https://user-images.githubusercontent.com/86096370/137788052-1579c6d8-4b84-4ec7-a99d-30dd3cd4c4aa.png">

#### Your new miner should be visible in your TEA browser wallet main page

<img width="1101" alt="St-7" src="https://user-images.githubusercontent.com/86096370/137788054-7e218b4c-c60e-4705-a5cd-6ae52366f654.png">

## IMPORTANT: Your Node Must Be Completely Synced-up Before Hosting

Please read carefully before hosting any applications. Failure to do so could result in penalties.

After you activate your newly planted CML, you still need to wait for your new node to sync up with the blockchain's latest block. Depending on your network speed, this sync-up may take up to a few minutes to several hours. Your node cannot provide any hosting services while negotiating the sync even though the status shows "active". If you host any application and your node hasn't yet synced, your node may be marked as "offline" which will result in a penalty.

You will need to login (ssh) to your node and type in the following command:

`sudo docker logs -f -n 10 delegate-layer1`

If you can see the output like the following screenshot (note the "Imported" lines in the log): </div>
 
![c_1](https://user-images.githubusercontent.com/86096370/145257305-f37c27c1-9081-4abd-873c-ae86b6926cee.png)

then your machine has completed syncing and is ready to host applications.</div>

But if you see log messages as in the following screenshot (note the "Syncing .... target:.....best:... finalized #..." line):

![c_2](https://user-images.githubusercontent.com/86096370/145257308-12d41e9f-ae3c-404d-8663-1bf0cec4bef9.png)

then your machine is still syncing up to the latest block. Do NOT host any applications just yet. Check again after a few minutes or hours.

## Managing Your TEA Mining Machine from the CML Info Page
You can manage your active CML mining machine by clicking on its ID in your wallet:

<img width="1210" alt="camellia_id" src="https://user-images.githubusercontent.com/86096370/141043039-b24c67fa-1cc0-45b0-b1ca-ecfebcab4959.png">

These are the options you have available:

<img width="1130" alt="camellia_options" src="https://user-images.githubusercontent.com/86096370/141043047-731de60f-3fca-4f28-9cd7-76733de77be7.png">

- **Migrate miner** - Use this button to migrate your CML to a new machine (e.g. your old machine provider has unreliable uptime). The machine will have to be shut down first before this button becomes active. Note that if you sell your CML, the new miner has to run this command to migrate the CML to their own machine. 
- **Start miner** - Start up a previously stopped miner.
- **Shut down miner** - Shut down an active miner.
- **Resume miner**  - If your miner was detected to be offline, you can slick resume to continue your miner once you're sure that your node is back online.


## Managing Your TEA Mining Machine From The Command Line
In your _delegator-resources_ directory, there's a script named `tools.sh`. You can use this script file to perform administrative tasks on your mining machine using the following arguments:

- `tools.sh logs`: Show the current running docker-compose logs
- `tools.sh stop`: Stop docker-compose
- `tools.sh clean`: Clean out legacy data
- `tools.sh health`: Check if current running docker-compose is healthy or not
- `tools.sh restart`: Restart current running docker-compose file. Replaces having to do `docker-compose down` & then `docker-compose up -d`.

For example, to clean out the current program files (e.g. a new epoch is starting), you can execute the following commands:
```
cd delegator-resources
./tools.sh stop
./tools.sh clean 
```

*If you've already run the installation script but need to start over from scratch, follow the direction below to delete the current installation.*

- Stop the docker container: `tools.sh stop`
- Remove all the files in the *delegator-resources/* directory:
```
cd delegator-resources/
rm -rf *
rm -rf .*
cd ..
rmdir delegator-resources/
```
# Video Guide
A video tutorial of setting up a mining machine on DigitalOcean is [available on YouTube](https://www.youtube.com/watch?v=H0neCTcvFbY)
