// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract dynamicsizedarray{
    uint[] public arr=[10,299,23,2,16,17];
    function returnarr() public view returns(uint[] memory){
        return arr;
    }
    function func() public{
        //get
        uint temp=arr[3];
        //update
        arr[2]=44;   //[10,299,44,2,16,17]
        //delete
        delete arr[3];    //[10,299,44,0,16,17]
         //length
         uint len=arr.length;
         //push
        //  arr.push(98);     //[10,299,44,2,16,17,98]
         //pop()
         arr.pop();

    }
}

