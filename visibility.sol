// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// visibility -on state variables and  functions 
// types-public,private,internal,extenal 
//get to know( potential caller- in contract,derived contract,another contract,outside world)


//private->internal->external->public : gas consumption increases and security decreases


//potentail callers for:
// private:  contract itself
//internal :  contract and derived contact(child contract)
//external : only used for function - another contract and outside world
//public :  anyone can call

//by default state varible are internal and function are public

contract A{
    uint private x=12;  //only accebile in this contract
    uint internal y=123;   //accessible in this and derived
    uint public z =19;      //by anyone
    function check1() private pure returns(string memory){
        return "private";
    }
    function check2() internal pure returns(string memory){
        return "internal";
    }
    function check3() external pure returns(string memory){
        return "external";
    }
    function check4() public pure returns(string memory){
        return "public";
    }
    function check() public view returns(uint){
        // return x;
        // return y;
        return z;
    }
    function checkall() public view returns(string memory){
        // return check1();
        // return check2();
        return check4();
        // return check3(); //this will not work as external will be called by another contract and outside world 
    }
} 
contract B is A{
    // uint a=x;  //error bcoz x is private
    // uint a=y;  //willwork as internal can call by child contracts 
    uint a=z;    //will work as z is public
    // string public b=check1();  //error due to private function
    string public b=check2();
    // string public c=check3(); //error as cannot access by child contracts
    string public d=check4();


}
contract C{
    A obj=new A();
    // uint public a=obj.x();  //x is private cannot called by another contract
    // uint public a=obj.y();  //y is internal cannot called by another contract
    uint public a=obj.z(); 
    function anothercall() public view returns(string memory){
        // return obj.check3();  //chcek3 is external
        return obj.check4();
    }

}