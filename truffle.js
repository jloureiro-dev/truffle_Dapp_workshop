module.exports = {
    // See <http://truffleframework.com/docs/advanced/configuration>
    // for more about customizing your Truffle configuration!
    networks: {
        development: {
            host: "localhost",
            port: 7545 /*9545*/ ,
            network_id: "5777" // Match any network id
        }
    }
};