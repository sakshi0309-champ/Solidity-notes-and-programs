// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//reuire,revert and assert -used in error handling
//input validation and access control

// gas refund and state_variables value nt change if require is false 
contract Require{
   address public owner= msg.sender;
   uint public age=25;
   function checkrequire(uint _x) public{
       age=age+25;      //value will cahnge if rwuire is true
       require(_x>2,"value of x is less than 2");
   }
   function onlyowner() public{
       require(owner==msg.sender,"error");
       age=age-2;
   }
}