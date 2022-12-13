# TApp TEA Fluencer Template
TApp's using the **TEA Fluencer Social Influencer** template benefit from "tipping" where **consume** actions of TEA are made into the TApp's bonding curve according to its popularity on social media. To reap these benefits, each TApp will first need to be hosted by enough miners. In epoch 4, there needs to be a minimum of **3** hosting miners before a TApp is running on the network.

# TApp Tipping Logic
Once a TApp using the **TEA Fluencer Social Influencer** template is running on the TEA network, the tipping logic kicks in as follows:

- The **start time** is whenever a social TApp became eligible for tipping, or if it's already been tipped before, the last block in which it was tipped. 
- The countdown begins from this **start time** towards the 1000th block after **start time**. 
- The 1000th block from the last **start time** is the block in which the TApp will be tipped out. 
- If the tipping logic crashes, the recovered process will check if the last eligible block to be tipped out was processed or not. If not, it will tip out immediately and then begin the countdown towards the next 1000th tipping block.

The tip amount is administratively set for each epoch. 

- In epochs 5 & 6, YouTube videos earned 100T per new view (2500T cap per tipping round) with a minimum of 100T paid out even if there were no views during each 1000 block round.
- In epoch 7.1, the payout was reduced to 1T per view with a 25T cap that resets every 1000 blocks and no minimal tip amount guaranteed.

"New" is the current number minus the previous number. Previous number is the number when it was at last tipping block.
If the new number is zero or negative, the tip is zero and the current lower number will NOT be recorded as the new "previous" number. The previous number stays unchanged in this instance.

Keep in mind that YouTube views for a video will sometimes go down after Google's algorithm filters out bot views.