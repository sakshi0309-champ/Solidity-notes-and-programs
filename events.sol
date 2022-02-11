// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// events cannot be access-just stored at blockchain
//stored in transactional log

//indexing -maximum 3 ,used in dapps
contract Events{
   event balance(address account,string message,uint val);
   function set_Data(uint _val)public{
       emit balance(msg.sender,"has value",_val);
   }
}

contract chatApp{
    event chat(address indexed to, address from , string message );
    function sendmes(address _to,string memory _msg) public{
        emit chat(msg.sender,_to,_msg);
    }
}