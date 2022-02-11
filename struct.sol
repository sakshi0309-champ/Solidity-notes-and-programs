// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

//struct-reference datatype
//can also declared outside of contract
 struct Emp{
      string name;
      uint age;
      address acc;
  }
contract Struct{
  // struct Emp{
  //     string name;
  //     uint age;
  //     address acc;
  // }
  Emp public emp;
  constructor(string memory _name,uint _age,address _acc){
      emp.name=_name;
      emp.age=_age;
      emp.acc=_acc;
  }
  Emp[] public emps;
  function setvalue() public{
    Emp memory emp1=Emp("Rohan",45,0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    //   emp=emp1;

    Emp memory emp2=Emp({acc:msg.sender,name:"Rahul",age:23});

    Emp memory emp3;
    emp3.name="sham";
    emp3.age=20;
    emp3.acc=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    emps.push(emp1);
    emps.push(emp2);
    emps.push(emp3);

    emps.push(Emp("Ritik",28,msg.sender));

   //update will be in function

  //  Emp memory emp_temp=emp;
  //  emp_temp.name="harsh" ;//name will not change in emp
  //  Emp storage emp_temp1=emp;
  //  emp_temp1.name="harsh"; //name will chnage in emp

  //  emp.name="harsh";  //name will change 

  Emp storage emp_temp=emps[1];
  emp_temp.age=36;
  
  //delete
  delete emp_temp.acc;

  delete emps[2]; //dive default values

    
  }

}

contract Struct2{
  Emp public emp=Emp("shakti",24,msg.sender);
}