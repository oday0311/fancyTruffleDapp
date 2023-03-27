const HelloBlockchain = artifacts.require("./HelloBlockchain.sol");

contract("HelloBlockchain", accounts => {
  it("...should store the value 'Hello Blockchain'.", async () => {
    console.log("accounts[0]: " + accounts[0])
    const helloBlockchainInstance = await HelloBlockchain.deployed();

    // Set value of Hello World
    await helloBlockchainInstance.SendRequest("Hello Blockchain", { from: accounts[0] });

    // Get stored value
    const storedData = await helloBlockchainInstance.RequestMessage.call();

    assert.equal(storedData, "Hello Blockchain", "The value 'Hello Blockchain' was not stored.");
    console.log("The value 'Hello Blockchain' was stored.");
  });
});
