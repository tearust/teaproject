# Miners Must Setup Their Own Hardware

To start mining, contestants will need the following:

- A defrosted CML seed to plant into the mining machine. Contestants should stick with A or B CML as C seeds won't be able to host TApps.
- 1000 TEA for the initial staking slot.
- A mining machine to host the CML.

Contestants can use a variety of cloud hosting providers for their mining machines. Here's a [guide on setting up your miner on Digitalocean](https://github.com/tearust/teaproject/wiki/Mining-With-Your-Own-Hardware).

# Hosting TApps: Performance Requirement

Your CML has to have enough remaining performance to cover the cost of the TApp’s **host performance** requirement. Because your CML has limited performance, the TApps it can possibly host is also limited. With this limitation, you need to choose which TApps will make the most out of your CML’s performance.

> _My CML is qualified to host this TApp now, but what happens when my CML grows old and becomes weak?_

Your CML is qualified to host the TApp as long as its performance doesn't drop below the minimum performance threshold. If your seed ages and drops below this threshold, it gets kicked out automatically.

# Current hosts

The **Current hosts** number refers to the current number of miners that are hosting a particular TApp. If the number is currently 0, that means no one is currently hosting the TApp. This is a good opportunity to host as you will initially be earning all of the mining rewards when people use the TApp.

# Min and Max hosts
The **Min/Max hosts** refers to the minimum number of miners required to host a TApp and the maximum number of miners that a TApp can accommodate. If the minimum number of miners is not reached, a TApp won't run until at least this number of miners hosts it.

The **Max** number refers to the maximum number of miners that can host a TApp. If a TApp is at its maximum number of hosting slots, miners will not be allowed to host the TApp.

> _Why do TApps need a max hosts limit?_

1. **For performance**. For most TApps, as long as the hosting CML reaches a minimum threshold, the application performance will be good enough. More hosting CMLs for the TApp won’t increase performance past a point and sometimes might even cause the performance to degrade. So every TApp has to have an upper limit called Max hosts.

2. **For cost**. Another consideration is the cost of hosting. The more hosts a TApp has, the more the TApp will need to pay for its hosting fee. So if there’s a popular and profitable TApp in the list, you’ll need to rush to host it before it reaches the max hosts number.

> _But what if I want to host a popular TApp that is at the host limit?_

You won't be able to host this TApp once it's at the host limit. The TApp owner will have to raise the max hosts or they can release a clone of their existing popular TApp if they want to attract more miners.
