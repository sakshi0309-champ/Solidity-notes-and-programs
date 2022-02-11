// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract dynamicbytes{
    bytes public temp;
    constructor(){
        temp="12abcd45";
    }
    function push_element() public{
        temp.push('c');
    }
    function pop_element() public{
        temp.pop();
    }
    function getval(uint _id) public view returns(bytes1){
        return temp[_id];
    }
    function get_len() public view returns(uint){
        return temp.length;
    }
}