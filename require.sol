//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Bank
{
    address owner;
    mapping( address => uint ) balance;
    constructor ()
    {
        owner = msg.sender;
    }
    function addBalance(uint  _toAdd) public  returns (uint ){
        require(msg.sender == owner);
        balance [msg.sender] += _toAdd;
        return balance[msg.sender];
    }
    function getBalance () public view returns (uint )
    {
        return balance[msg.sender];
    }
    function transfer(address recipient, uint amount ) public{
        require(balance[msg.sender]>= amount , "You have insufficient balance");
        require(msg.sender != recipient, "You cannot send the money");
        _transfer (msg.sender, recipient, amount);
    }
    function _transfer( address from , address to, uint amount) private{
        balance[from] -= amount;
        balance [to] += amount;
    }
}


// pragma solidity ^0.8.0;

// contract Require
// {
//     address public  owner = msg.sender;
//     uint  public age = 25;
//     function Checkrequire(uint x ) public
//     {
//         age = age+2;
//         require( x >=2, "your entry should  be greater than 2");
//     }
//     function Onlyowner() public
//     {
//         require (owner==msg.sender, "You are not the owner");
//         age = age-2;
//     }
// }

