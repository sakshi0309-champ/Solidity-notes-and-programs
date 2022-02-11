// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//most based liked to most drived which is least dependent

//run from right to left and depth first manner
contract A{
    uint public a;
  constructor(){
      a=100;
  }
  function funcA() public{
      a=10;
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
}
contract C is A,B{   //B will dominate between a and b

}