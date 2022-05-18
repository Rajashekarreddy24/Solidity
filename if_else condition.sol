

///////////////////// Conditionals //////////////

// pragma solidity ^0.8.0;
//  contract conditionals 
//  {
//      function IsNumberEven(uint _number) public pure returns(bool)
//      {
//          if(_number % 2 ==0) {
//              return true;
//          }else {
//              return false;
//          }
//      }
//  }

//  pragma solidity ^0.8.0;
//  contract conditionals{

//      function Enterfive(uint enter5) public pure returns(bool)
//      {
//          if(enter5 == 5)
//          {
//              return true;
//          }
//          else
//          {
//              return false;
//          }

//      }
//  }



// pragma solidity ^0.8.0;
// contract conditionals
// {
//     string public Truewon;
//     string public Falselost;

//     function MatchWinorLost(uint score ) public pure returns (bool)
//     {
//         if (score >= 100) 
//         {
//             return true;
//         }
//         else
//         {
//             return false;
//         }
//     }
// }

// pragma solidity ^0.8.0;
// contract test 
// {
//     string won;
//     string lost;
//     function MatchPredictionScore(uint score) 
//     public pure returns(string memory)
//     {
//         if(score>=100)
//         {
            
//             return "won the match";
//         }
//         else
//         {
//             return "lost the match";
//         }
//     }
// SPDX-licence-Identifier : UNLICENSED



// pragma solidity ^0.8.0;
// contract test
// {
//     function MatchPrediction(uint score) public pure returns(string memory)
//     {
//         string memory output;
//         if(score >=100)
//         {
//             output= "Century";
//         }
//         else if(score <100 && score >= 50)
//         {
//             output = "Half_century";
//         }
//         else
//         {
//             output = "Low_score";
//         }
//         return output;
//     }
// }