// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

contract DWCT{
    //To store user's balances
    mapping(address => uint) public balance;

    //Deposit function to receive ether
    function deposit() public payable{
        balance[msg.sender] += msg.value;
    }
    //withdraw function to withdraw ether
    function withdraw(uint _amount)public {
        require (balance[msg.sender]>= _amount, "Insufficient balance");

    //Deduct the amount from the user balance
   balance[msg.sender] -= _amount;
    
    //Transfer ether to the user
    payable(msg.sender).transfer(_amount);
    }

    //Function to check balance
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}