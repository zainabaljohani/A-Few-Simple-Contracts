pragma solidity ^0.4.19;

contract Bank {

    mapping(address => uint256) public balanceOf;   // balances, indexed by addresses

    function deposit(uint256 amount) public payable {
        require(msg.value == amount);

        balanceOf[msg.sender] += amount;     // adjust the account's balance
    }
}