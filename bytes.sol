// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
// 1byte=8bits
// 1 hexadecimal=4 bits
// 1 byte=2hexadecimal
// 1box contains 2 digits
contract Bytes{
    bytes5 public temp1;
    bytes7 public temp2;
    function setvalue() public{
        temp1="abcde";    //store hexadecimal value
        //temp1="abcd";  //padding: in last 00 will store
        temp2="12abcde";
    }
    function get_value() public view returns(bytes1){
     return temp1[2];
    }
    function getlength() public view returns(uint){
        return temp1.length;
    }
}
