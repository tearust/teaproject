# How to Mine With Your Own Hardware
Contestants can now use their own computer hardware to mine on the TEA network. This will require running an installation script to setup your mining machine. The process is slightly different depending on the type of CML you've planted.

# A & B CML are Powerful Enough to Host TApps
You can use a type A or type B CML-planted mining machine to not only earn public service mining rewards but also host TApps. In epoch 6 there won't be any type A CML available for sale. Type B Camellia seeds can be purchased through the [marketplace](https://wallet.teaproject.org/#/auction_store) as well as through the signup form. So if you want to host TApps in epoch 6, you'll need to purchase a B CML seed and plant it into a machine with a publicly-accessible IP address.

# C CML Can Mine for Public Service Rewards

Note that Type C CML are not allowed to host TApps. You can setup miners for these to earn public service rewards (like remote attestation). Type C planted mining machines can be setup on a home computer and will require 1000T for the first staking slot. C CML-planted mining machines don't require a publicly accessible IP addresses. Besides mining, type C CML seeds can also be used for securing TEA loans and staking into other mining machines.

# Minimum Mining Machine Requirements - OS
The mining machine installation scripts were designed to be run on Ubuntu. 
- **Linux:** The script has been tested successfully on Ubuntu versions 18.04, 20.04, and 21.04 and may run on other Ubuntu versions as well. 
- **Mac** and **Windows:** Most users running home computers will be best off running a virtual machine for Ubuntu. [Click here for more info on Mac and Windows compatability](https://github.com/tearust/teaproject/wiki/Mining-With-Your-Own-Hardware---Virtual-Machines#mac--windows-compatibility-for-mining-machine-script). That link also explains how C CML owners on Mac and Windows can use Multipass to setup Ubuntu on their home computers under a virtual machine.

# Minimum Mining Machine Requirements - Hardware
- **For A or B-planted CML mining machines**: A machine with a publicly-reachable IP address. You can use your home computer (provided you have shell access to run docker and have [a way to get an IP address](https://help.edovia.com/hc/en-us/articles/115010872388-Making-your-computer-reachable-remotely-without-Screens-Connect) that is reachable from the outside world). For most people it will be easiest to use a cloud virtual server provider. 
- **For C-planted CML mining machines**, most home computers running Ubuntu should work fine. These C CML machines don't always need to be reachable 24/7 so can be run from home computers behind residential routers.
- Minimum ram requirement for mining machine = 2gb.

# Guide to Planting a B CML Seed into a Mining Machine
The following guide will use [DigitalOcean's](https://digitalocean.com) 2GB droplet with Ubuntu 20.04 as the operating system. Because it has at least 2G of ram and a publicly accessible IP, we will be planting a B CML into this mining machine.
#### Create your droplet

<img width="1040" alt="_12" src="https://user-images.githubusercontent.com/86096370/137818245-23ef2364-671e-4a39-8965-5b49a0304c49.png">

#### Select Ubuntu 20.04 for the distribution

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
By default, digital ocean set the memory swap to off in order to save the life of their SSD drive. But if you do not care (you should not), you should turn it on. It will potentially prevent the OOM (out of memory) which causes your server to crash. Please follow the instruction below: 
[Digital ocean instruction](https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04)
#### Plant your Your B CML seed

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

# Your TEA Mining Machine Can Host TApps Once It's Synced-up

Visit [the TApps list](https://wallet.teaproject.org/#/tapps_list) to find a TApp you want to host. Miners earn a larger share of the TApp and public service mining rewards compared to stakers: 

- 50% of the mining rewards will go to the miner.
- 50% of the rewards will be split between the miner and stakers. This staker group also includes the miner staking at the 0 index slot.

For example, let's say the address ending in **NNP9** is mining with CML 298. That machine has 1 staker, the address ending in **YfLd**. Here's what the staking distribution looks like:

<img width="1086" alt="Screen Shot 2021-10-19 at 5 49 06 PM" src="https://user-images.githubusercontent.com/86096370/138010022-09c65996-7852-48ed-9451-fd70959fb872.png">

Let's say there are 100T worth of mining rewards to be divvied up betweeen miner and stakers for CML 298. Noting that 50% of 100T is 50T, the mining rewards are distributed as follows:

- **NNP9** earns 50T for the miner's share.
- For the stakers' share of the 50T, **NNP9** earns 70.711% of 50T and **YfLd** earns 29.289% of 50T.

So in total, **NNP9** earns (50T + 35.3555T) = 85.3555T and **YfLd** earns 14.6445T of the 100T mining rewards for that round.

# Managing Your TEA Mining Machine from the CML Info Page
You can manage your active CML mining machine by clicking on its ID in your wallet:

<img width="1210" alt="camellia_id" src="https://user-images.githubusercontent.com/86096370/141043039-b24c67fa-1cc0-45b0-b1ca-ecfebcab4959.png">

These are the options you have available:

<img width="1130" alt="camellia_options" src="https://user-images.githubusercontent.com/86096370/141043047-731de60f-3fca-4f28-9cd7-76733de77be7.png">

- **Migrate miner** - Use this button to migrate your CML to a new machine (e.g. your old machine provider has unreliable uptime). The machine will have to be shut down first before this button becomes active. Note that if you sell your CML, the new miner has to run this command to migrate the CML to their own machine. 
- **Start miner** - Start up a previously stopped miner.
- **Shut down miner** - Shut down an active miner.
- **Resume miner**  - If your miner was detected to be offline, you can slick resume to continue your miner once you're sure that your node is back online.


- **Apply to be a blockchain validator** - - [PoS staking and mining](https://support.polkadot.network/support/solutions/articles/65000168057-how-do-i-stake-nominate-on-polkadot-) are possible in layer-1, the same as Polkadot. Miners wishing to earn through PoS can click this button which will take them to [this url](https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Fwallet.teaproject.org%2Fwss1#/staking).


# Managing Your TEA Mining Machine From The Command Line
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
