// SPDX-License-Identifier: MIT
// This example code is designed to quickly deploy an example contract using Remix.
pragma solidity ^0.6.7;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {

    AggregatorV3Interface internal priceFeed;


    constructor() public {
        priceFeed = AggregatorV3Interface(0x3D400312Bb3456f4dC06D528B55707F08dFFD664);
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        
        
        return price/10**9;
    }
    
    const sdk = new epnsHelper(config.web3MainnetNetwork, channelPrivateKey, settings, epnsSettings)

    //getSubscribedUsers gets all subscribed users to the EPNS channel passed in on initialisation
    const users = await sdk.getSubscribedUsers();

    // getContract returns an ethers contract representation of a deployed instance
    const contract = await getContract(address, abi)

    // send messages to a particular user (or simulate by passing a boolean)
    await sendNotification(user, title, message, payloadTitle, payloadMsg, notificationType, simulate)
}