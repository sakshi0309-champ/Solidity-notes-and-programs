// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    uint public a;
  constructor(){
      a=100;
  }
  function funcA() public{
      a=10;
  }
  function func() public pure virtual returns(string memory){
       return "hi i am in a";
   }
}
contract B is A{
    uint public b;
   constructor(){
     b=200;
     a=50;
   }
   function funcB() public{
       b=20;
   }
   function func() public pure virtual override returns(string memory){
       return "hi i am in b";
   }
}
contract C is A,B{   //B will dominate between a and b
    function func() public pure override(A,B) returns(string memory){             //overide(B,A) can also be written
       return "hi i am in C";
   }
}