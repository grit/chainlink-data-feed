# chainlink-data-feed

Sample smart contract that interacts with a Chainlink Data Feed. The latest price of ETH/USD is looked up when deployed via the constructor and stored inside a state variable.

The `hasPriceIncreased` function returns a bool indicating whether or not the price of ETH has increased since the time of deployment.
