// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//fallback can work as receive work but receive cannot work as fallback
//hance fall back is superior

//*fallback  -only take data and ether by making it payable
//it is executed when a non-existent function is called on the contract
//it is required to be marked external
//it has no name
//it has no arguments
//it cannot return anything
//it can be defined per contract
//its main use to send the ether directly to contract

//receive can only take ether it needs to be payable


// if we have both functions- then if we send data+ether then fallback will accept ottherwise receive can accept ether only
contract fallback_receive{
    event log(string _fun,address add,uint val,bytes dat);
     fallback() external payable{
           emit log("fallback",msg.sender,msg.value,msg.data);
    }
    receive() external payable{
           emit log("fallback",msg.sender,msg.value,"");
    }
     function checkbal() public view returns(uint){
        return address(this).balance;
    }
}