// //SPDX-License-Identifier:UNLICENSED

// pragma solidity ^0.8.0;
// contract statements
// {
//     uint256[] output;

//     function test() public returns(uint[] memory)
//     {
//         for(uint i=0; i<5; i++)
//         {
//             if(i ==3)
//             {
//                 continue ; //break;
//             }
//             output.push(i);
//         } 
//         return  output;   
//     }
// }


pragma solidity ^0.8.0;
contract test
{
    uint[] output;
    function abc() public returns(uint[] memory)
    {
        uint i=0;
        while (i<5)
        {
            i++;
            if(i==3)
            {
                continue ; 
            }
            output.push(i);
        }
        return output;
        
    }
}

// pragma solidity ^0.8.0;
// contract test{
//     uint[] output;
//     uint i=0;
//     function statements() public returns(uint[] memory)
//     {
//         do{
//             i++;
//         }
//         while (i<5);
//         {
//             if (i ==3)
//             {
//                 break;
//             }
//         }
//     }

// }