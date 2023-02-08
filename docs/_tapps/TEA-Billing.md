# TEA Billing

## TEA Project’s Billing System in Detail

The TEA Project has two types of billing: charges to end-users who use the TApps and charges the billing to the TApp that uses TEA’s state machine. The description of the billing charges and the revenue destination is as follows.

#### End-user Billing

* Gas fee: End-user pays to the hosting miner(s).
* TApp usage fee: End-user pays to the app.

![](https://cdn-images-1.medium.com/max/1200/1*46Xlfv85s3Z9BAFLcTpxuw.png)

The gas fee technically goes to the accrued balance before hitting the bonding curves of all the CML miners who were utilized during the transaction. And the TApp usage fee goes to the accrued balance before being sent to the TApp’s bonding curve. If the accrued balance is positive, all of its TApp token holders receive token dividends at the next distribution. If the accrued balance is negative, then al TApp token holders will have their token amounts reduced according to the balance owned.

#### TApp Billing

The following two types of billing are charged to the TApp, specifically to the TApp’s bonding curve.

* Txn fee: TApp pays to the state machine maintainers.
* Memory tax: TApp pays to the state machine maintainers. This payment is based on computing resources consumed as well as state storage used.

![](https://cdn-images-1.medium.com/max/1200/1*wxNpLNZXyeVivToQOO3FGw.png)

The above txn fee and memory tax are the fees paid by the TApp to use the state machine. These two payments go into a collection pool that are paid out at regular intervals to the state maintainers.

* The unit of billing and frequency of billing are covered more in [TEA-Billing-Rate-Time](TEA-Billing-Rate-Time.md).
* Developers can learn about the differences between WASM and native functions in [TEA-Billing-WASM-Native](TEA-Billing-WASM-Native.md).
