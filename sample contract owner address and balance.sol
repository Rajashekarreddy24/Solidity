//SPDX-License-Identifier : UNLICENSED

pragma solidity ^0.8.0;

contract MyContract
{
    address  private owner;
    constructor() public
    {
        owner = msg.sender;
    } 
    function getowner() public view returns(address)
    {
        return owner;
    }
    function getbalance() public view returns (uint256)
    {
        return owner.balance;
    }

}