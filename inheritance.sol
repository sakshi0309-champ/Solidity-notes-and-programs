// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    uint public x=100;
    function check1() public pure returns(string memory){
        return "i am in contract 1";
    }
     function check2() public pure returns(string memory){
        return "i am in contract 1";
    }
     function check3() public virtual pure returns(string memory){
        return "i am in contract 1";
    }
     function check4() public virtual pure returns(string memory){
        return "i am in contract 1";
    }
}
contract B is A{

    function check3() public override pure returns(string memory){
        return "i am in contract 2";
    }
    function check4() public virtual override pure returns(string memory){
        return "i am in contract 2";
    }
}
contract C is B{
    function check4() public override pure returns(string memory){
        return "i am in contract 3";
    }
}