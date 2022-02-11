// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//immutable transaction cost is more than const 
// const is inline
contract Immutable{
    // address public immutable owner=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;     //inline initialize

    //initialize during deployment
    address public immutable owner;
    address public constant owner2=address(1);
    address public owner3=address(1);
    constructor(address _owner){
         owner=_owner;
    }
    function I() public view returns(address){
        return owner;
    }
    function v() public pure returns(address){
        return owner2;
    }
    function s() public view returns(address){
        return owner3;
    }
}