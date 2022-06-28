AuthKey is similiar to a session in web 2.0. It's used to identify users and their authority of operation in TApps.

# Why not use username/password?
Almost all user activies happen in layer2 instead of layer1, but the user authentication happens in layer1 only. The only thing we can determine via user authentication is the user signature using a blockchain wallet (such as Metamask or Ledger). You may ask why we cannot use the traditional username/password as most web 2.0 applications typically use. The reasons are:

- We try to make all users annoymous by not connecting user_id with any personal information, such as email/phone number.
- Saving passwords (even hashed) anywhere in layer2 may attract hackers.
- Many users will not set a strong password to protect themselves.
- Many users forget their passwords and we can hardly help them to get it back or reset it due to the annoymous nature of blockchain wallets.

Because of these issues, we would like to use the end user's blockchain signature as the solo way to identify them.

# Operation auth in AuthKey
The AuthKey includes the allowed operations list. User will get promoted in the UI before signing the authkey on what operations are allowed (allowance to spend by this TApp (max expense), Allowance to transfer, Withdraw etc.)

Tihis operation list is a JSON string that's signed using the user's blockchain private key. [[hosting_CML]] will not verify this signature, but the [[provider]] inside the [[State_Machine]] will. Even if the [[state_machine_actor]] was coded by the developer to allow transfering user's funds, the [[provider]] of the [[state]] will double check to confirm if this operation is still allowed by the user. In this case, even if the developer is a bad actor that's trying to steal user's money, it will be blocked by the [[State_Machine]] eventually. 

In other words, the design of TEA Project allows for the worst-case assumption that a developer's trying to steal users' money but the AuthKey logic inside the [[provider]] of [[state]] prevents this from happening.

# How does it work?
The TApp developer will set an AuthKey profile string (in JSON format) based what the end user's supposed to do after login. This profile should only include the necessary operations. If any more than the required operations are included it may cause the end user to reject signing the transaction and even report the TApp to the DAO.

When a user logs in to a TApp, this AuthKey profile string will be part of the to-be-signed string and shown in the wallet UI. The end users should review these allowed operations before signing. 

The signing process is the same as using Metamask to sign an Ethereum transaction. The only difference is this signed string will not be sent to the blockchain, but to the [[hosting_CML]] instead.

Once signed, the user agrees that this TApp can do what's been allowed in this string. The signed string is sent to the [[State_Machine]] and stored there temporarily with a nonce handle. This nonce handle is called **AuthKey**. This AuthKey is returned to the [[hosting_CML]] and the user's browser. Every time this user wants to run any [[queries]] or [[commands]] that require authorization, this AuthKey will be sent to the [[hosting_CML]] and eventually to the [[state_machine_actor]]. When the [[state_machine_actor]] actually calls the [[provider]] of [[state]], the AuthKey will be checked before it can actually be allowed to run. If there is any violation, an error will be thrown.

# AuthKey expiration
Like regular sessions in web 2.0, an AuthKey has an expiration time. If the user stops sending any activity for 30 minutes (this length of time is configurable), the AuthKey is expired. The end user has to re-login to create a new AuthKey to continue operations.

# AuthKey security
If a sniffer get this AuthKey, he can impersonate the user and cheat the system. So the security of AuthKey is very important. In [[hosting_CML]] and [[State_Machine]], the AuthKey always stays inside the hardware [[enclave]]. During transportation between [[enclave]]s, TLS security is always applied. Between browser and the [[hosting_CML]], a special end-to-end encryption is applied to keep the AuthKey secure. 
