//coded by Tunmicrypt
//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.10;

/*This smart contract is basically used to understand the concept of interface, modifiers and inheritance.  Messi has certain football attributes
and so does Ronaldinho. Ronaldo seeks to get those attributes by inheritance and als by using the interface. Messi must be able to play ball before he can access those attributes
(That is the use of modifier). Ronaldinho must also wear Nike before he can access those functions.*/


interface Ball{      //This is the interface
    function pass() external returns(string memory); 
}

interface Boots{
    function cross()  external view returns(string memory);
}


contract Messi is Ball{
    bool playsBall;
    constructor (bool _playsBall){
      playsBall = _playsBall;
}
    modifier canPlayBall(){
      require(playsBall,"He canot play the ball");
        _;//enables function to follow after require has been satisfied
    }

    function dribble() public pure returns(string memory){
        return "step overs, shimmy";
}
    function pass() external pure override returns(string memory){ //the word override must be included to link the interface
        return "He can pass the ball well";//this is the implementation
    }
    function shoots() public pure virtual returns(string memory){//virutal is included so the function can be overrided.
        return "He chips the goalkeeper";
    }
} 
 contract Ronaldinho is Boots{
     bool wearsNike;
     constructor (bool _wearsNike){//He must wear Nike if he wants to cross
         wearsNike = _wearsNike;
     }
    modifier canCross(){
        require(wearsNike, "He cannot cross till he wears Nike");
        _;
    }
     function cross() public view override returns(string memory){
         return"what a beautiful cross";
     }
 }



contract Ronaldo is Messi(true), Ronaldinho(true){
    address private Roncontract = 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B;//This address was the address after the contract Ronaldinho was deployed
     function shoots() public pure override returns(string memory){//override is included so the child can override the parent function
        return "His shot has so much finesse";
     }    
        
    function sprints() public view returns(string memory){
        Boots boots = Boots(Roncontract);//Boots is a type and boots will be used to access the cross function
        return boots.cross();
    }    
}
