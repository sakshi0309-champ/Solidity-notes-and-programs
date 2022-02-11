// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract _strings{
    // string by default storage blockchain level
    string public name="aman";
    
    function  checkstrings(string memory str1) public pure returns( string memory){
        // string memory _name="shakti";
        // return _name;
        return str1;
    }
}