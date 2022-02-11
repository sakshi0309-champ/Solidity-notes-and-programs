// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract loops{
function loop()public pure returns(uint){

  // uint j=0;
  uint count;
//   while(j==1){
//     count=count+5;
//     j=j+5;
//   }
// do{
//     count=count+5;
//   return count;
// } while(j<1);

for(uint i=0;i<10;i=i+2){
  if(i==6){
    // continue; //ans is 20
     break;       //ans is 15
  }
  count=count+5;
}
return count;
}
}