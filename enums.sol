// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


// bool -only for two values yesor no,true or false, 0 or 1 
// enums-user-defined datatype-nameing to integers-sensisble naming // 2 or more values but not many
//maintainance of smart contract is easy
//readability
//decrease chances of bugs
contract Enum{
    enum Status{
       Pending,  //0
       Shipped, //1
       Accepted,  //2
       Rejected,  //3
       Cancel    //4
    }
    // Status public status;   //initializing variable status default value-0
    Status status;
    function getstatus() public view returns(Status){
      return status;
    }
    function setstatus(Status _status) public{
        status=_status;
    }
    function rej() public{
        status=Status.Rejected;   //status=3
    }
    function reset() public{
        delete status;  //set valuue of status to pending
    }
}