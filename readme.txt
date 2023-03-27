

1.如何在truffe命令下，调用合约

1）先编译部署当前的合约到 ganache
2) 在truffle命令行下， 
truffle console进入，
HelloBlockchain.deployed().then(instance=>contract=instance)
HelloBlockchain.deployed().then(instance=>contract=instance)

contract.say()

3)
contract.SendResponse("hi")


================================



 