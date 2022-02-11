// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract arr{
    // uint[5]  public array;
    // uint cnt;
    // function loop(uint _x) public{
    //     for(uint i=0;i<_x;i++){
    //          cnt++;
    //     }
    // }

uint[5] public a=[10,20,30,40,50];
function arrays() public view returns(uint){
    //get
    // uint temp;
    // temp=a[2];

    // //update
    // a[2]=300;

    // //delete
    // delete a[3];

    // lengths
    uint len=a.length;
    return len;
}
}