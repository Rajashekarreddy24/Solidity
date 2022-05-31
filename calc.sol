//SPDX-License-Identifier : UNLICENSED

pragma solidity ^0.8.0;
contract calculator
{
    address value1;
    mapping(address=>uint) A;
    address value2;
    mapping(address=>uint) B;
    // uint x;
    // uint y;
    constructor ()
    {
        value1 = msg.sender;
        value2 = msg.sender;
        // x==A[value1];
        // y==B[value2];
    }
    function EnterValues(uint a, uint b) public returns(uint, uint)
    {
        require(msg.sender == value1);
        A[value1]=a;
        require(msg.sender == value2);
        B[value2]=b;

        return (A[value1],B[value2]);
    }
    function CheckValues()public view returns(uint, uint)
    {
        return (A[value1],B[value2]);
    }
    function Sum() public view returns(uint)
    {
        return A[value1]+B[value2];
    }
    function Subtraction() public view returns(uint)
    {
        return (A[value1]-B[value2]);
    }
    function Division() public view returns(uint)
    {
        return (A[value1]/B[value2]);
    }
    function Multiply() public view returns(uint)
    {
        return (A[value1]*B[value2]);
    }

}