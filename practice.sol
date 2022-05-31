//SPDX-License-Identifier: UNLICENSED
/*
pragma solidity >=0.8.7;

contract simplestorage {
    uint storedData;
    function set(uint x) public{
        storedData = x;
    }
    function get () public view returns (uint) {
        return storedData;
    }
}
*/

/*
pragma solidity >=0.8.7;

contract practice {
    uint public a =40;
    uint public b =20;
    uint public sum ;
    function getResult() public returns(uint){
        sum = a+b;
        return sum;
    }
}
*/
/*
pragma solidity >= 0.8.7;   //compiler version declaration//
contract Identity
{
    string name;
    uint age;               //state variable declaration

   constructor() public         //constructor class
    {
        name = "Raj";
        age = 10;
    }

    function getName() view public returns(string memory){      //function declaration
        return name;
    }
    function getAge() view public returns(uint){
        return age;
    }
     function IncrementAge () public
    {
        age = age+10;
    }
    
}

*/

/// Getter function example////
/*
pragma solidity >=0.8.7;
contract local{
    uint age =10;
    function getter() public view returns(uint)
    {
        return age;
    }
}
*/

////setter function///
/*
pragma solidity>=0.8.7;
contract local{
    uint age =10;
    function getter() public view returns(uint)
    {
        return age;
    }
    function setter() public
    {
        age=age+1;
    }
}
*/

/////setter function with arguement////
/*
pragma solidity>=0.8.7;
contract Practice
{
    uint age =10;
    function getter() public view returns(uint)
    {
        return age;
    }
    function setter(uint newage) public
    {
        age = newage;
    }
}
*/

////state variable with public//////
/*

pragma solidity >=0.8.7;
contract practice
{
    uint public age=10;
    function setter() public
    {
        age=age+10;

    }
}
*/


///////Constructor//////////
/*
pragma solidity >=0.8.7;
contract test
{
    uint public count;
    constructor(uint new_count)
    {
        count = new_count;
    }
}
*/

///////// integer range //////
/*
pragma solidity>=0.8.7;
contract range
{
    uint16 public count = 255;
}
*/

/////////// fixed size array//////
/*
pragma solidity >=0.8.7;
contract array
{
    uint[5] public arr=[10,20,30,40,50];
    function setter(uint index,uint value) public
    {
        arr[index]=value;
    }
    function length() public view returns(uint)
    {
        return arr.length;
    }

}
*/

/*
pragma solidity>= 0.8.7;

contract test 
{
    uint a =10;

}
*/
/*
pragma solidity >=0.8.7;
contract test 
{
    uint[4] public arr=[10,20,30,40] ;
    function setter(uint index, uint value) public 
    {
        arr[index]= value;
    }
    function length() public view returns(uint)
    {
        return arr.length;
    }
    
}
*/


///////////Dynamic size array////////
/*
pragma solidity >=0.8.7;
contract array
{
    uint[] public arr;
    function pushElement(uint item) public
    {
        arr.push(item);
    }
    function len() public view returns(uint) 
    {
        return arr.length;
    }
    function popElement() public
    {
        arr.pop();
    }

}
*/

/////////////// if-else  ////////////////////
/*
pragma solidity >= 0.8.7;

contract practice
{
    int  public a =10;
}
*/


/////////// test project ////////
/*
pragma solidity ^0.8.2;

contract testProject
{
    address payable[] public players;
    address public manager;
    address payable public winner;

    constructor() 
    {
        manager = msg.sender ;
    }
    function participate() public payable 
    {
        require(msg.value == 3 ether, "Ether is not sufficient.");
        players.push(payable(msg.sender));
    }
    function getbalance() public view returns(uint)
    {
        require(manager ==msg.sender,"You are not manager");
        return address(this).balance;
    }
    function random() public view returns(uint)
    {
        return uint(keccak256(abi.encodePacked(block.difficulty,
         block.timestamp, players.length)));
    }
    function pickWinner() public 
    {
        require(manager == msg.sender);
        require(players.length >=3);
        uint r =random();

        uint index = r%players.length;
        winner = players[index];
        winner.transfer(getbalance());
        players = new address payable[](0);
    }
}
*/

////////////// view vs pure ////////////

/*pragma solidity >=0.8.7;
contract test
{
     uint num1 = 2;
     uint num2 = 4;

     function getresult() view public returns(uint product, uint sum)
     {
         /*uint num1 = 5;
         uint num2 = 10;
         product = num1*num2;
         sum = num1+ num2;
     }
}
*/
/*
pragma solidity >=0.8.7;
contract test
{
    function getresult() pure public returns(uint product,uint sum)
    {
        uint num1 = 5;
        uint num2 = 8;
        product = num1*num2;
        sum = num1 + num2;
    }
}
*/


//////////// Mappings //////////
/*
pragma solidity >= 0.8.7;

contract Mappings
{
    struct student
    {
        string Name;
        string Subject;
        uint Marks;
    }
    mapping (address => student) results;
    address[]  public student_results;
    function adding_values() public 
        {
        var student 
          = result[0xDEE7796E89C82C36BAdd1375076f39D69FafE252];
  
        student.name = "John";
        student.subject = "Chemistry";
        student.marks = 88;
        student_result.push(
          0xDEE7796E89C82C36BAdd1375076f39D69FafE252) -1;
        }
}
*/



///////////////////////////Enum and Struct /////////////////////
/*

pragma solidity >=0.8.7;
contract Enum
{
    enum weekdays
    {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday
    }
    weekdays week;
    weekdays choice;
    weekdays constant default_value = weekdays.Saturday;
    function set_values() public
    {
        choice = weekdays.Monday;
    }
    function get_choice () public view returns(weekdays) 
    {
        return choice;
    }
    function getdefaultvalue() public pure returns(weekdays)
    {
        return default_value;
    }
}
*/
/*
pragma solidity >= 0.8.7;
contract EnumTest
{
    enum test 
    {
        Small,Medium,Large
    }
    test choice;
    test constant default_value = test.Large;
    function set() public
    {
        choice = test.Small;
    }
    function get() public view returns(test)
    {
        return choice;
    }
    function getdefaultvalue() public pure returns (test)
    {
        return default_value;
    }

}
*/

/*
pragma solidity >=0.8.7;
contract test {
 struct Book 
 {
	string name;
	string writter;
	uint id;
	bool available;
}
Book book1;
Book book2 = Book("Building Ethereum DApps","Roberto Infante ",2, false);
function set_book_detail() public
 {
	book1 = Book("Introducing Ethereum and Solidity","Chris Dannen",1, true);
}

function book_info()public view returns (string memory, string memory, uint, bool) 
{
		return(book2.name, book2.writter,book2.id, book2.available);
	}
	
function get_details(
) public view returns (string memory, uint) {
	return (book1.name, book1.id);
}
}
*/
/*

pragma solidity >=0.8.7;

contract test
{
    uint[] data;
    uint8 j=0;

    function loop () public returns (uint[] memory)
    {
        while (j<5)
        {
            j++;
            data.push(j);
        }
        return data;
    }
}
*/

////////// Inheritance /////////////
/*
pragma solidity >=0.8.7;

contract A 
{
    function sea() public pure virtual returns(string memory)
    {
        return "Salty";
    }
    function food() public pure virtual returns(string memory)
    {
        return "fish";
    }
    function drink() public pure  virtual returns(int a)
    {
        a=10;
        return a;
    }
}

contract B is A
{
    function food() public pure override returns(string memory)
    {
        return "water";
    }
    function drink() public pure override returns(int a)
    {
        a= 15;
        return a;
    }
}
*/
/*
pragma solidity >= 0.8.7;

contract sum
{
    uint A=10;
    
    function getsum () public view returns(uint)
    {
        uint sum = A+B;
        return sum;
    }
    function setsum(uint B) public 
    {
        B= B+10;
    }
}
*/

// pragma solidity >= 0.8.7;
// contract test
// {
//     uint A = 10;
//     uint B = 20;
//     function setB() public view
//     {
    
//     }
//     function sum() public view returns(uint sum)
//     {
//         sum = A+B;
//         return sum;
//     }

// }


// /////////////////loops////////////////////////////


// pragma solidity ^0.8.0;
// contract LoopsPractice
// {
//     uint [3] public arr;
//     uint public count;
//     function loop() public
//     {
//         while(count<arr.length)
//         {
//             arr[count]=count;
//             count++;
//         }

//     }

// }
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
// }



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

// pragma solidity ^0.8.0;
// contract Test
// {
//     function Ternary(int score) public pure returns(string memory)
//     {
//         string memory output;
//         output = (score>= 100? "Century":"half_century");
//         return output;
//     }
// }



// pragma solidity ^0.8.0;
// contract P2V
// {
//     function reward() public pure returns(uint )
//     {
//         if (contacts )

//     }
    
// }

// pragma solidity ^0.8.0;

// contract SolidityTest {
//    uint storedData; 
//    constructor() public{
//       storedData = 10;   
//    }

//    function getResult() public view returns(string memory){
//       uint a = 10; 
//       uint b = 2;
//       uint result = a + b;
//       return integerToString(result); 
//    }
// }

// pragma solidity ^0.8.0;
// contract Test{
//     function loops() public view returns ()
//     {
        
//     }
// }

// pragma solidity ^0.8.0;

// contract practice{
//     string x = "Hello world";
//     function Press_here() public view returns(string memory){
//         return x;
//     }
// }

pragma solidity ^0.8.0;

contract sumtest
{
   
    function Sum( uint x, uint y) public pure returns(uint)
    {
        uint sum = x+y;
        return sum;
    }
}