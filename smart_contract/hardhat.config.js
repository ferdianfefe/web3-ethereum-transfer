// https://eth-ropsten.alchemyapi.io/v2/aRSd-sWtfeoqNMGpf_G8McyaJtm4n61P

require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: "https://eth-ropsten.alchemyapi.io/v2/aRSd-sWtfeoqNMGpf_G8McyaJtm4n61P",
      accounts: [
        "f8f494e76dcdbcd657c400d31b5bfbbfcb5d4c085b4db713ebf16423e7a7aff4",
      ],
    },
  },
};
