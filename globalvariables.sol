// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract globalVariables{
    address public myaddr=msg.sender;
    uint public time=block.timestamp;
    uint public diff=block.difficulty;
    uint public gascost =tx.gasprice;
}