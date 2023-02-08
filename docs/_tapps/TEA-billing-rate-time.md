# TEA Billing - Rate & Time

There are two technical details relating to how often billing is charged and at what rate.

TEA billing is not charged in real-time and instead accrued and charged at regular intervals. It’s not efficient to run the billing algorithm in real-time because of associated costs. Therefore billing is charged at intervals of 5–20 minutes currently though this is subject to change.

Also note that TEA billing is done in arbitrary units which are converted to TEA by multiplying (or dividing) by a scaling factor set by the DAO. Similar to how Ethereum’s ETH token can be broken down into the smaller unit of *wei*, the TEA Project has *Matcha* as the most atomic unit of value. The TEA token breaks down to 1T = 10¹⁸ Matcha. TEA shown on the frontend is technically the underlying Matcha given in terms of TEA.
