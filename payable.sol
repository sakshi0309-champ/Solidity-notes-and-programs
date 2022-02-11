// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// you can send ethers to address which you have make payable

// we can send ethers to the that contarct which has payable function

//if button is red colour-payable
//button is blue-view,pure,state_variable

contract Payable{
    address payable public owner=payable(msg.sender);
    constructor() payable{    //one time add only at time od deployment so if you want to add again and again u have to make 
                                //function payable

    }
    function getEth() payable public {

    }
    function checkbal() public view returns(uint){
        return address(this).balance;
    }
}