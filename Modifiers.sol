// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Modifier{
    modifier samecode(){
         for(int _i=0;_i<5;_i++){
                 //code
         }
         _;
         //code
    }
    function func1() public samecode pure returns(string memory){
        // for(int _i=0;_i<5;_i++){

        // }
        return "fun1 say hi";
    }
      function func2() public pure samecode returns(uint _x){
        // for(int _i=0;_i<5;_i++){

        // }
        // return "fun1 say hi";
        _x=20;
    }
      function func3() public pure samecode returns(string memory){
        // for(int _i=0;_i<5;_i++){

        // }
        return "fun3 say hi";
    }
}

contract Auction{
 address public owner=msg.sender;
 modifier onlyowner(){
     require(owner==msg.sender,"you are not th owner");

     _;
 }
 function startAuction() public view onlyowner{
//    require(owner==msg.sender,"you are not th owner");
   //code
 }
 function stopAuction() public view onlyowner{
//  require(owner==msg.sender,"you are not th owner");
 //code
 }
 function checkstatus() public view onlyowner{
//  require(owner==msg.sender,"you are not th owner");
 //code
 }
 uint public age=30;
 modifier temp(uint _x){
   age=age+_x;
   _;
 }
 function changeage(uint _y) public temp(_y){
     
 }
}