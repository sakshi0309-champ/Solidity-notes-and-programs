// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract stateVariables{
    // uint public salary=1000;
    //state variable cost gas as save in blockchain storage;
    uint public salary;
    constructor(){
        salary=1000;
    }
    function setSalary() public{
        salary=2000;
    }
}