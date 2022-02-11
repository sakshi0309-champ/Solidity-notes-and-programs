// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//outside contract is filelevel

// mapping cannot be declared at file level an dinside function only at contract level
// key and value pair
// key can be of value,enum and contract type

// contract Mapping{
//     mapping(uint=>string) public emp_id;
//     function setIds() public{
//         emp_id[31]="gaurav";
//         emp_id[23]="Akash";
//         emp_id[19]="sahil";
//         emp_id[34]="Arun";
//         emp_id[19]="Ashok";  //you get the ashok between ashok and sahil if you test for 19
//     }
//     function getId(uint _idx) public view returns(string memory){
//         return emp_id[_idx];
//     }

// }
struct donor_dts{
    string name;
    uint age;
    string add;
    uint don;
}
contract advMapping{
    mapping(address=>donor_dts) public acc_info;
    function set(string memory _name,uint _age,string memory _add,uint _don) public {
          acc_info[msg.sender]=donor_dts(_name,_age,_add,acc_info[msg.sender].don + _don);
    }
    function delete_Info() public{
        delete acc_info[msg.sender];
    }
}