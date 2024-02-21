# TApp authorizations

When you login a TApp, a list of authorizations show what this TApp can do on behalf of you. Many TApps help you manage your assets or pay the bills. You do not need to sign to approve those transactions, given some of them may happen every few seconds. Once you reviewed the list and sign to login this TApp, the state machine will keep your authority active until you logout or session timeout. During this period, the TApp can send transactions on behalf of you.


{% tabs %}
{% tab title="Phone" %}
![[Pasted image 20231213095359.png]]
{% endtab %}
{% tab title="Web" %} 

![[Pasted image 20231212180550.png]]

![[Pasted image 20231213100458.png]]
{% endtab %}
{% endtabs %}

**TEA Project Guidelines for TApp Authorizations:**

TEA Project operates as an open platform, allowing anyone to create a TApp. To safeguard end users from potential risks posed by unscrupulous developers, the TEA Project platform relies on login authorizations. It is crucial to review and comprehend the TApp's functionalities listed below before logging in. If any TApp appears to demand more permissions than necessary and makes you uncomfortable, refrain from logging in and express your concerns on our community forum to mitigate the risk of potential scams.

## **Permissions Overview:**

### 1. **Move:**

The TApp can transfer layer2 TEA tokens from your account to others, with the total transfer amount not exceeding the predefined **spending limit** you set for this TApp. If you instruct this TApp to send funds to other accounts, ensure that this permission is checked.

TAppStore needs the **move** feature to help you transfer fund to your friends.

### 2. **In-app Purchase:**

Many TApps may require payment for certain features, adhering to the "no-free-lunch" principle in Web 3. Payments made are directed to the specific account associated with the TApp based on your usage. If you trust the app or developer, feel free to check this permission.

TAppStore needs the **In-app Purchase** feature to help you pay for the usage.

### 3. **Manage Investment:**

Some TApps facilitate investment management, enabling actions such as buying or selling bonding curve tokens. If you are familiar with and clear about these functionalities, you can check this permission. However, most TApps do not necessitate this feature.

TAppStore needs the **Manage Investment** feature to allow you to buy / sell tokens.

### 4. **Withdraw:**

Very few TApps request this feature, allowing the app to transfer your TEA tokens from TEA Project (layer2) to the Ethereum blockchain (layer1). Currently, TAppStore is the sole TApp requiring this feature. If you are unsure why an app needs this permission, it is advised not to check it.
