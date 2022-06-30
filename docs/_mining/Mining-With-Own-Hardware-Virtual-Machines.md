**C CML** owners can now earn public service rewards (like Availability Attestation) using their own computer hardware. Since C CML mining machines don't require a public IP address, home computers are ideal to mine with them. Mining with CML does require Ubuntu Linux to properly run the install script, so what can a user do if they don't have a Linux machine at home?

# Mac / Windows Compatibility for Mining Machine Script

There are two major problems when running the installation script on a Windows or Mac machine:

* On a Mac, because qemu emulation is used by the script, an X86 architecture is expected so it won't run on M1 Macs.
* On Windows, the Windows Subsystem for Linux (WSL), particularly WSL version 1, isn't real Linux. It doesn't support unix sockets which Docker and TEA mining depend upon. There are some reports that [WSL 2](https://docs.docker.com/desktop/windows/wsl/) fixes the issue but we haven't 100% confirmed if it works.

Users running an incompatible OS can run a Ubuntu virtual machine (VM) on their home computers. One of the easiest ways to get a VM up and running is to use [Multipass](https://multipass.run/). Running Multipass allows you command line access to your Ubuntu VM just like interacting with a remote Docker instance. The benefit is that it's running locally on your Windows or Mac machine - you just need to have enough free memory to run your virtual machine.

Using Multipass theoretically allows you to run multiple Ubuntu VMs on the same Mac/Windows computer. This allows you to earn more revenue without increasing your machine costs. If you do, keep in mind:

* You will need to plant multiple type C CML, one for each virtual machine.
* Every CML mining node will need at least 2G RAM, so allocate enough RAM for each of your virtual machines.

# Planting C CML into a Virtual Machine

The process of planting a C CML into a local virtual machine is similar to the process of planting a B CML into a remote mining machine. 

* Run the **Machine ID** and **Polkadot wallet address** script on your local machine's command line:

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/tearust/delegator-resources/epoch6/gen_tea_id.sh)"`

* Copy and paste those values into the **Plant my Camellia** window in the TEA browser wallet. It will ask for an IP, which you can fill out using any random number.
* Go back to your command line and run the installation script:

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/tearust/delegator-resources/epoch6/install.sh)"`

* Go back to the TEA browser wallet and click through to confirm your miner.
