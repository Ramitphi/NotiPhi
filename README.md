# NotiPhi

##### Notifying user about the gas price
--------------------------------------------------------------------------------------------------------------------------------------------------------------
Idea : User can submit their address to get notified when the ethPrice drops below a certain level.

The Gas Price is fetch using the data price feed from chainlink oracle and the users get notified using the EPNS.
----------------------------------------------------------------------------------------------------------------------------------------------------------

Approximate WorkFlow /Way of execution:

*The users's enters their address on which they want to get notified and the selects the level for which they want to get notified

*Data is stored in the firebase about the users in a map where all the addres who want to get notified for the choosen level get hashed

*In interval of 10 mins the getprice function is executed and the function from smart contract is called to emit event corresponding to the passed level(Chainlink Keeprs can be used for this purpose)

*The EPNS contract based on that event notfies the subset of user of the subscribed channel.

------------------------------------------------------------------------------------------------------------------------------------------------------------

As we were new to blockchain development, we spent most of our time in learning and reading about various projects related to blockchain , and in the given time constraint we were only able to execute these functionalities for now

Current Working Functionalities:

* Fetching Data using chainlink oracle(KOVAN Tesnet) is working fine.
* User can get the current gas price using the "Current Gas Price" button.
* User's choice for reciving notification based on the options(stored in firebase):
    * less than 20 Gwei
    * Less than 30 Gwei
    * Less than 40 Gwei
  
------------------------------------------------------------------------------------------------------------------------------------------------------------
Porject link :https://notiphi.netlify.app/ (Switch to kovan network)



