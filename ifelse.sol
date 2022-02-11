// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ifelse{
    function func(uint _x) public pure returns(string memory){
        string memory val;
        if(_x>100){
            val="greater than 100";
        }
        else if(_x<100){
            val="smaller than 100";
        }
        else{
            val="equal to 100";
        }
        return val;
    }
}