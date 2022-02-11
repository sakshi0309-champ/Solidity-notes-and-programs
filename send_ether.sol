// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// send ether to another account or contract -send,transfer,call
// send to any address returns bool - limit upto 2300 gas so check with require and also to revert the stat_variables value

//transfer-gas limit 2300-nothing return-also revert state_variables automatically

// call-user can set gas limit; return bool and bytes -cannot revert state_variables
contract sendETH{
    // address payable public getter=payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    receive() external payable{}
    
    // function checkbal() public view returns(uint){
    //     return address(this).balance;
    // }
    // function SEND(address payable getter) public{
    //     bool sent=getter.send(1000000000000000000);
    //     require(sent,"tran is failed");
    // }
    // function TRANSFER(address payable getter) public{
    //     getter.transfer(1000000000000000000);
    // }
    // function CALL(address payable getter) public{
    //     (bool sent,)=getter.call{value:1000000000000000000}("");
    //      require(sent,"tran is failed");
    // }

    //send directly from one to another address
     function checkbal() public view returns(uint){
        return address(this).balance;
    }
    event log(uint value);
    function SEND(address payable getter) public payable{
        emit log(msg.value);
        bool sent=getter.send(msg.value);
        require(sent,"tran is failed");
    }
    function TRANSFER(address payable getter) public payable{
        getter.transfer(msg.value);
    }
    function CALL(address payable getter) public payable{
        (bool sent,)=getter.call{value:msg.value}("");
         require(sent,"tran is failed");
    }
}

contract getETH{
      receive() external payable{}
    
     function checkbal() public view returns(uint){
         return address(this).balance;
     }
}