//coded by tunmicrypt
//aim of the program is to understand the baskics of how things are sent in smart contracts

// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.11;  //used to state version of solidity being worked on

contract ValentineSpecial{                              //a smart contract to send a valentines gift

    function PaySomeone() external payable{             //a function to put money into the smart contract
    }
    
    function checkBalanceOfContract(address check) external returns(uint){  //function to check balance of smart contract 
     return   address(this).balance;
    }
    
    function checkBalance(address check) external returns(uint){            //function to get balance of receiver
     return   check.balance;
    }

    function SendGift(address payable receiver) external{                   //function to transfer funds to receiver
        require(receiver.balance < 5000, "Balance is less than 5k");        //a form of error handling using require function to set a condition that must be met
    
    } 
}

//end
