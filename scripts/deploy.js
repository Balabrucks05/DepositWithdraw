const {ethers,upgrades} = require("hardhat");

async function main(){
    const DWCT = await ethers.getContractFactory("DWCT");
    const DWCT_ = await DWCT.deploy();
    const DWCTAdress = await DWCT_.getAddress();
        console.log(`Contract Address: ${DWCTAdress}`);
}
    main().catch((error) => {
        console.error(error);
        process.exitcode = 1;
    });