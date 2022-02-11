// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//revert - custom error
contract Revert_Assert{
   address public owner= msg.sender;
   uint public age=25;
//    function checkrequire(uint _x) public{
//        age=age+25;      //value will cahnge if rwuire is true
//        require(_x>2,"value of x is less than 2");
//    }

error throwerror(string,address);         //custom error
   function checkrevert(uint _x) public{
       age=age+25;      //value will cahnge if rwuire is true
       if(_x<2){
        //   revert("value of x is less than 2");
          revert throwerror("value of x is less than 2",msg.sender);   //less gas use than upper line
       }
   }
   function onlyowner() public{
      if(owner!=msg.sender){
          revert("error");
      }
       age=age-2;
   }
   //assert
   function checkownership() public view{
       assert(owner==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
   }
}