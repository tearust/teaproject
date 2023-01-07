When a user elects to "plant" or "migrate" a CML, they must specify a controller account for the CML mining machine. This will automatically move a small amount of TEA (currently 1T) from the CML owner's account to the controller account. If the user doesn't use this controller account anymore, they can withdraw these TEA funds back to their wallet from their controller account by importing its seed phrase into the [polkadot browser extension](https://polkadot.js.org/extension/). 

# How to remove funds from the controller account
To get started, the user must locate their controller account seed phrase using the following the steps:

1. Login into their server via the terminal.
2. Use `cat ~/.tea` to print environment variable settings of their server.
3. Copy the value of the "MY_LAYER1_ACCOUNT" variable

For example, if after executing `cat ~/.tea` the following appeared:
```
MY_TEA_ID="nl5FtimwYwHN3DnP4+6Nm9EBIKPca1mC8ZfWs6lovFc="
MY_LAYER1_ACCOUNT="pottery convince mystery raise pass zoo comfort bring lift snake media scale"
```
The output shows that "pottery convince mystery raise pass zoo comfort bring lift snake media scale" is the controller account seed phrase needed to import that account into the polkadot browser extension:

![Screen Shot 2021-12-06 at 1 13 27 PM (2)](https://user-images.githubusercontent.com/86096370/144923991-880c764f-fe43-4729-8a43-53daaeace3be.png)

Now that you have the private keys for the controller wallet, you can transfer its TEA funds back to your own wallet.
