//SPDX-License-Identifier: UNLICENSED

// pragma solidity ^0.8.0;
// contract fallbackFunction{
//     event log( string func, address sender, uint value, bytes data);

//     fallback() external payable{
//         emit log( "Fallback", msg.sender, msg.value, msg.data);
//     }
//     receive() external payable{
//         emit log( "receive", msg.sender, msg.value, "");
//     }
// }

// pragma solidity ^0.8.0;
// contract sender{
//     uint x;
//     mapping(address => uint) balance;
//     constructor () public {
//         x=10;
//     }
//     function SetX( uint _x) public returns(bool)
//     {
//         x=_x;
//         return true;
//     }
//     fallback() external payable
//     {
//         balance[msg.sender]+= msg.value;
//     }
// }
// contract Sender
// {
//     function transfer() public payable 
//     {
//         address _recevier;
//         payable  _recevier = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
//         _recevier.transfer(100);
//     }
// }


// pragma solidity ^0.8.0;

// contract fallbackTest
// {
//     event log( string func, address sender, uint value, bytes data);
//     fallback() external payable
//     {
//         emit log( "fallback", msg.sender, msg.value, msg.data);

//     }
//     receive() external payable
//     {
//         emit log ("recevie", msg.sender, msg.value, "");
//     }
// }