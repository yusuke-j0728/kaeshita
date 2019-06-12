const Kaeshita = artifacts.require("./Kaeshita.sol");

module.exports = function(deployer) {
    deployer.deploy(Kaeshita, {
        gas: 5000000
    });
};