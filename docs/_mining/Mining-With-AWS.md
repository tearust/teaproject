# Mining With AWS Nitro

## Create IAM Policy

First you'll need to create a new IAM Policy to allow the use of the KMS key to only be used inside the enclave. Open the "IAM -> Policies" page, and then click the "Create Policy" button to load the create policy page. You'll next select the "JSON" tab and paste the following json configs:

````json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "kms:Decrypt",
                "kms:GenerateDataKey",
                "kms:GenerateRandom"
            ],
            "Resource": "arn:aws:kms:*:580177110170:key/f66b0a1b-28c7-49a1-82c8-70094dd7e45b"
        }
    ]
}
````

After creatiing the policy you should see a new policy like this:

<img width="1301" alt="图片" src="https://user-images.githubusercontent.com/3713930/227701234-367b10f5-7f96-4b4c-b8ed-bd2143b2b62c.png">

For more information please read [the AWS docs](https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html#cross-account-key-policy).

## Create Role

Open the "IAM -> Roles" page and click the "Create role" button to create a new IAM role, then select the first box:

<img width="1574" alt="图片" src="https://user-images.githubusercontent.com/3713930/227701503-3d264683-71b7-4f72-a317-02c50b29db72.png">

In the second step you can input "key" as a word filter to make it easier to find and select the following two policies:

* "AWSKeyManagementServicePowerUser" 
* The IAM policy we created earlier

<img width="1560" alt="图片" src="https://user-images.githubusercontent.com/3713930/227701664-21289a5b-d6d8-4188-bdf9-a5db7b91d230.png">

Finally, enter the new role name and remember it for future use.

## Prepare the security group

Select the "EC2 -> Security Groups" page and choose a security group you want to modify (or create a new one). You'll need to add the following inbound rules:

<img width="1300" alt="图片" src="https://user-images.githubusercontent.com/3713930/227702350-e21d191f-cd1e-49ec-90b9-1b40172775ce.png">

These input ports will be filtered after the node is started.

## Create an EC2 instance

With the preliminary steps out of the way, we can now setup our EC2 instance. First select the region you want your EC2 instance to be deployed to.

<img width="376" alt="图片" src="https://user-images.githubusercontent.com/3713930/227702512-8949e24c-c23f-478d-ad66-73246fe9d09e.png">

In the above image you can see that the "Asia Pacific (Seoul)" region was chosen with the region code "ap-northeast-2". Please keep this region code in mind because this code will be used as the last parameter in the "install" and "start" scripts below.

To ensure a successful instance launch, follow the setup instructions below：

1. Choose the "Amazon Linux" OS (DO NOT use the default "Amazon Linux 2023 AMI" option):

<img width="931" alt="图片" src="https://user-images.githubusercontent.com/3713930/231627468-46034243-0e71-4ffc-b663-b4ab5028235c.png">

2. Choose an instance type that supports nitro. We'll use the "c5a.xlarge":

<img width="937" alt="图片" src="https://user-images.githubusercontent.com/3713930/231720559-6664f7b3-9f25-4901-b0f4-6867ade67bea.png">

3. Use the security group we updated (created) earlier:

<img width="938" alt="图片" src="https://user-images.githubusercontent.com/3713930/227703076-21f6153f-3d7d-40ab-b902-1f073b8f9ea1.png">

4. (optional) It's better to increase the volume size from 8G to 30G:

<img width="936" alt="图片" src="https://user-images.githubusercontent.com/3713930/227703175-778599fa-5b13-4c66-974e-64eceb7995f8.png">

5. In the "Advanced details" tab, use the IAM role we created above:

<img width="931" alt="图片" src="https://user-images.githubusercontent.com/3713930/227703322-136398dc-28fb-48b2-b7c9-964ef45ba595.png">

6. In the "advanced details" tab set "Nitro Enclave" as enabled:

<img width="745" alt="图片" src="https://user-images.githubusercontent.com/3713930/227703431-d6763256-b3a3-4d08-a86a-42856cf824b7.png">

After successfully launching the EC2 instance, you can access it via ssh and proceed with the next steps of the tutorial.

## Use EC2 instance to run a node

## Initial install

First you'll need to prepare the TEA node dependencies which should take about 10 minutes.

Please note that the following preparations need only be completed once before starting the node for the first time.

Before running the next few scripts you should have a Machine_ID registered to your ETH address. You can contact us [on Telegram](https://t.me/teaprojectorg) to get a Machine_ID.

Run the following command to start or update to the newest TEA software version:

````
bash -c "$(curl -H "Cache-Control: no-cache" -fsSL https://raw.githubusercontent.com/tearust/nitro-build/main/install.sh)"
````

Or using the following command without prompting (replace the Machine_ID and wallet_ID with your own values):

````
bash -c "$(curl -H "Cache-Control: no-cache" -fsSL https://raw.githubusercontent.com/tearust/nitro-build/main/install.sh)" "" "0x0000000000000000000000000000000000000000000000000000000000000000" "0xbd6D4f56b59e45ed25c52Eab7EFf2c626e083db9" "ap-northeast-2"
````

The above command uses the region code of `ap-northeast-2` but you should change this according to the region you use (i.e. an Oregon server will have a `us-west-2` region code).

## Start

Make sure you're in. the working directory of the "nitro-build" folder created automatically in the preparation step. If not, then navigate to that folder:

````
cd ~/nitro-build
````

Then simply run the following script to start the node with parts both inside and outside the enclave using the same Machine_ID and wallet_address you used during the install process. For example, if `0x0000000000000000000000000000000000000000000000000000000000000000` was the Machine_ID and `0xbd6D4f56b59e45ed25c52Eab7EFf2c626e083db9` was the wallet address:

````
./start.sh "0x0000000000000000000000000000000000000000000000000000000000000000" "0xbd6D4f56b59e45ed25c52Eab7EFf2c626e083db9" "ap-northeast-2"
````

The above command uses the region code of `ap-northeast-2` but you should change this according to the region you used for your EC2 instance.

## Plant the CML

You can now visit the Nitro TApp Store to purchase a CML and plant it inside your machine.

1. Go to the [Nitro TApp Store](http://54.180.82.194:8080/ipfs/QmPvqjPJ8wmc7KwFZY1y6vZLeRRhMF56yrmdMTe3NCeF2m) and click on the **TApps** tab.
1. If you don't have a CML, you can bid for one in the **Seed Auction** TApp. The CML seed will be available one hour after the last placed bid.
1. After you've claimed your CML, you can plant it into your AWS machine using the **Miner Portal**. During the planting process, select the same Machine_ID that you used to setup your AWS node as well as your AWS node's IP address. You can find your node's IP address in your AWS console:
   <img width="1130" alt="Screenshot 2023-04-18 at 3 37 58 PM" src="https://user-images.githubusercontent.com/86096370/232939399-67ca0075-af8b-4cb6-852d-3891441b430c.png">
1. After you're done planting, your node is ready to host TApps.
