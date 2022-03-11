const hre = require("hardhat");

async function main() {
  const Chainlink = await hre.ethers.getContractFactory("Chainlink");
  const chainlink = await Chainlink.deploy();

  await chainlink.deployed();

  console.log("Chainlink deployed to:", chainlink.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
