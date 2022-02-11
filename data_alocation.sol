// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// data allocation-storage,memory,call data 

//storage contains state_variable ,and storage is on block chain
//memory contains local_variable and memory is in RAM
//call data is in RAM

contract dataloc{
    // uint[] public arr=[1,3,5,7,9];
    // function Storage() public{
    //     uint[] storage arrs=arr;
    //     arrs[3]=90;
    // }
    // function mem() public view{
    //     uint[] memory arm=arr;
    //     arm[1]=21;
    // }

    function Memory(string memory str, uint[] memory arr) public{   //consumes more gas than calldata
        getInMem(arr);
        // getInCall(arr);  // cannot pass from mem to call data
    }
    function Calldata(string calldata str,uint[] calldata arr) public{
        getInMem(arr);
        getInCall(arr);  //no new array creation when pass from calldata to call data
    }
    function getInMem(uint[] memory arr) public{

    }
    function getInCall(uint[] calldata arr) public{

    }


}