// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
//view read only-blockchain,state and global variables;
//pure functions-nor read nor write;
//sample functions(transactional function)-can change only state variables-does not return anything
contract viewandpurefunctions{
    uint public age=20;
    function viewfunction() public view returns(uint){
        return age;          //gas more than pure
    }
    function purfnc1() public pure returns(uint){
        return 1;
    }
    function purfnc2(uint _x) public pure returns(uint){
        return _x;      //nothing do with any state or global variable  //least gas
    }
    function simplefunc() public{  //gas more than view-simplefunctions
        age=age+10;   //change the state variable
    }
    function dummy()public view returns(uint){
        return age+10;   //doesnot change the value of state variable;
    }
}