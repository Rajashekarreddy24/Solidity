

pragma solidity ^0.8.0;
contract Test
{
    function Ternary(int score) public pure returns(string memory)
    {
        string memory output;
        output = (score>= 100? "Century":"half_century");
        return output;
    }
}