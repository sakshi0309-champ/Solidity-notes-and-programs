// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//inbuilt cryptographic functions-keccak256-input bytes and output-hash 32 bytes
// sha256-input bytes and output-hash 32 bytes
// ripemd160-input bytes and output-hash 20 bytes

// use of hash
// contract sign
//unique ID

contract hashfun{
function hashkeccak256(uint _x,string memory name,address _addr) public pure returns(bytes32){
    return keccak256(abi.encodePacked(_x,name,_addr));
}
function hash2keccak256(uint _x,string memory name,address _addr) public pure returns(bytes32){
    return keccak256(abi.encode(_x,name,_addr));
}
function hashsha256(uint _x,string memory name,address _addr) public pure returns(bytes32){
     return sha256(abi.encodePacked(_x,name,_addr));
}
function Ripemd160(uint _x,string memory name,address _addr) public pure returns(bytes20){
       return ripemd160(abi.encodePacked(_x,name,_addr));
}
}

//create diffrent has for differennt hash function and bytes encoder

