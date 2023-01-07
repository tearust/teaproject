**Note**: most people will just need to [restart services](Mining-Required-Open-Ports.md#restart-services) to fix their issue.

Your CML node will require the following ports to be open in order to be an active host on the TEA network: 

* 4001 
* 5001 
* 5998
* 8000 
* 8080 

If you notice your node is not listed as active on the [active miner list](https://wallet.teaproject.org), then here are some steps to troubleshoot.

### Check That Required Ports Are Open

You can check which ports are open on your machine using a tool like `nmap` (you may need to install it first):

* `nmap localhost`

Or `lsof`:

* `lsof -i -P -n | grep LISTEN`

Make sure that the required ports mentioned above are all open. 

If you need to check if a specific port is open, you can use the following command:

`sudo netstat -plnt | grep 8000`

The above checks on port 8000.

### Restart Services

If your ports are not open, then you can restart the necessary services for your node by restarting Docker:

````
cd ~/delegator-resources
docker-compose start
````

In general, you'd use `docker-compose down` to stop your Docker container and `docker-compose up -d`  to start it

Note that all necessary services will be down if you reboot your server so you'll need to restart services after every reboot.

### Check That Open Ports Are Reachable

Even if you have the required ports open on your server they may not be reachable. We're going to use a public port checker to test if your server is reachable on port 8000. You can use any port checking service like

* https://www.yougetsignal.com/tools/open-ports/

Enter your IP address and check port 8000. We choose port 8000 because even though the TEA Project's remote attestation process is conducted across multiple ports, usually if one port is unreachable then all of them are. So we just test port 8000.

If you want to use an internal tool and have nmap installed, you can also check if your server is reachable using the following command:

`nmap -p 8000 your_droplet_IP_address`

The above command checks port 8000, and `your_droplet_IP_address` should be replaced with your droplet's actual IP address.

If the service shows your server is unreachable then you should check if a firewall is active on your server.

### Checking for an Active Firewall

Let's first rule out that DigitalOcean themselves have installed a firewall by checking that it isn't enabled. You can find this in your dashboard:

<img width="954" alt="Screenshot 2022-12-02 at 9 50 26 AM" src="https://user-images.githubusercontent.com/86096370/205355076-397c03c8-ef7a-4cd9-b0c1-4c666fb9beac.png">

The next possibility is that you or the Ubuntu template you're using has installed a firewall. The most popular Ubuntu firewall is `ufw`. To check if it's installed, use the following command:

`sudo ufw status`

If it returns an `Active` status, then you have two choices: either stop ufw completely, or delete the rules that are blocking the necessary ports.

### Ufw Option 1: Stop the Service

To stop the ufw firewall, issue the following command:

`sudo ufw disable`

### Ufw Option 2: Delete Blocking Rules

You can also delete any rules blocking the necessary ports through the following procedure.

1. First list the active rules along with line numbers:

`sudo ufw status numbered`

2. You can delete any rules blocking a necessary port using the following command:

`sudo ufw delete {line-#-of-rule}` 

where `{line-#-of-rule}` is replaced by the line number of the offending rule. 

For example, `sudo ufw delete 2` to delete the second rule.

### Checking Your Tweaks

Note that some templates for Ubuntu will have different services installed depending on the version number. After each of the steps above, you should go back to the external port checker (such as https://www.yougetsignal.com/tools/open-ports/) and see if your changes have any effect.

If the above steps don't solve the issue, we'd recommend opening a ticket with DigitalOcean and they can help further troubleshoot.

## Addendum: Ports Needed by Each Service

### IPFS

* 4001
* 5001
* 8080

### OrbitDB

* Same as IPFS

### Adapter

* 8000

### Client

* 5998
