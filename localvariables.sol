// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract localVariables{
    bool public b;
    uint public age;
    address public newAdd;
    //local variables are created inside fuction
    //local vaiables are store in memory-temperory stack space-negligible gas

    function func(uint _x, bool _y, address _z) public returns(uint,bool){
        uint i=20;
        bool b1=true;

        i+=20;
        b1=false;

        age=_x;
        b=_y;
        newAdd=_z;
        
        return (i,b1);

    }
}