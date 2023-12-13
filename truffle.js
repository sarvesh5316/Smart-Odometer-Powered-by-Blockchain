module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
     host: "localhost",
     port: 8545,
     network_id: "*", // Match any network id
     from: "0xd72c0b7f566d5656f78b1c8c0d631abd09b8b546",
     gas: 4612388
   }
 }
};
