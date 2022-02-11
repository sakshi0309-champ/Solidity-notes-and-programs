// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    string public name;
    uint public age;
    constructor(string memory _name,uint _age){
          name = _name;
          age = _age;
    }

}
contract B{
    string public add;
    uint public salary;
     constructor(string memory _add,uint _sal){
          add=_add;
          salary=_sal;
    }
}

//static way
// order of execution for constructor left to right
// A,B,C
contract C is A("gaurav",21),B("delhi",100000){

}
// order of execution 
// B,A,D
contract D is B,A{        
    constructor()A("gaurav",21)B("delhi",100000){

    }
}
contract E is A,B{       //dynamically
   string  public a;
    constructor(string memory _name,uint _age,string memory _add,uint _sal,string memory _a)A(_name,_age+2)B(_add,_sal){
            a=_a;
    }
}
contract F is A("gaurav",21),B{
    constructor(string memory _add,uint _sal)B(_add,_sal){

    }
}