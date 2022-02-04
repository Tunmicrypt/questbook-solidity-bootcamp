// Coded by Tunmicrypt

//The whole idea is for the smart contract to take in 2 positive integers and use the functions 

pragma solidity ^0.8.11; //This code refers to the version of solidity you are trying to work with

contract Calc{
    uint x ;
    uint y ;

    function add() external view returns(uint){
      return x + y;
    }
    
    function subtract() external view returns(uint){
        return x - y;
    }

    function divide() external view returns(uint){
        return x / y;
    }
    function multiply() external view returns(uint){
        return x * y;}
        
    }
//end of code
