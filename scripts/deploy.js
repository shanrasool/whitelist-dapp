const { ethers } = require("hardhat");

async function main() {
  const contract = await ethers.getContractFactory("Whitelist");
  const deployedContract = await contract.deploy(50);

  await deployedContract.deployed();

  console.log("Contract Address: ", deployedContract.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log("Error: ", error);
    process.exit(1);
  });
