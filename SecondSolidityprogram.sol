//coded by Tunmicrypt

//an assignment which uses visibility functions as well as if and for loop

pragma solidity ^0.8.11; //To specify the type of version you want to use

contract SecondContract{  //Naming the smart contract
    uint[] x;              //declaring an array in solidity  

    function set( uint y) external  returns(uint){   //external is to ensure the function can be called outside the smart contract
        for ( uint i = 0; i < y; i++){               // for loop stating parameters
        if (i % 2 == 0){
            x.push(i);                               // action to be performed if If statement is true
        } 
        } 
        return x.length;                              //return length of array 
    }
}
//end of code
