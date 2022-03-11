// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Chainlink {
  AggregatorV3Interface internal priceFeed;

  int256 storedPrice;

  constructor() {
    priceFeed = AggregatorV3Interface(
      0x8A753747A1Fa494EC906cE90E9f37563A8AF630e
    );
    storedPrice = getLatestPrice();
  }

  function getLatestPrice() public view returns (int256) {
    (, int256 price, , , ) = priceFeed.latestRoundData();
    return price;
  }

  function hasPriceIncreased() external view returns (bool) {
    int256 currentPrice = getLatestPrice();
    return currentPrice > storedPrice;
  }
}
