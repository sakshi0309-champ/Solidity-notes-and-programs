// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//direct calling
//calling by super keyword

contract A{
    event log(string name,uint age);
    function func1() public virtual{
     emit log("A.func1",21);
    }
    function func2() public virtual{
     emit log("A.func2",21);
    }
}
contract B is A{
 function func1() public virtual override{
     emit log("B.func1",31);
     A.func1(); //Direct calling
    }
    function func2() public virtual override{
     emit log("B.func2",31);
     super.func2();   //check fron right to left which rigtmeost parent has the function will execute
    }
}
contract C is A{
 function func1() public virtual override{
     emit log("c.func1",41);
    }
    function func2() public virtual override{
     emit log("c.func2",41);
    }
}
// contract D is B,C{
//  function func1() public override(B,C){
//      emit log("D.func1",51);
//      B.func1();
//     }
//     function func2() public override(B,C){
//      emit log("D.func2",51);
//      super.func2();                             //D.func2,51
//     }                                           //C.func2,41
// }
contract D is C,B{
 function func1() public override(B,C){
     emit log("D.func1",51);
     B.func1();
    }
    function func2() public override(B,C){
     emit log("D.func2",51);
     super.func2();                             //D.func2,51
    }                                           //B.func2,31
}                                               //A.func2,21