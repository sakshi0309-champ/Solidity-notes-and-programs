// SPDX-License-Identifier: MIT
//datatypes-value and reference
//value: uint,int,address,bytes
//reference string,struct,array,enums
//reference type stored in by default storage
pragma solidity ^0.8.0;

contract functionIntro{
    uint public age=20;
    function add(uint _x,uint _y) public pure returns(uint){
          return _x + _y;
    }
    function changeAge() public{
        age+=1;
    }
    function getage() public view returns (uint){
            return age;
    }
    function func() public{
    }
}

//will not work visibility internal just can use in contract
function dummy(uint _x)pure returns(uint){
    return _x*10;
}