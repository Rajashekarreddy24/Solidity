

// pragma solidity >=0.8.7;
// contract Enum
// {
//     enum weekdays
//     {
//         Monday,
//         Tuesday,
//         Wednesday,
//         Thursday,
//         Friday,
//         Saturday
//     }
//     weekdays week;
//     weekdays choice;
//     weekdays constant default_value = weekdays.Saturday;
//     function set_values() public
//     {
//         choice = weekdays.Monday;
//     }
//     function get_choice () public view returns(weekdays) 
//     {
//         return choice;
//     }
//     function getdefaultvalue() public pure returns(weekdays)
//     {
//         return default_value;
//     }
// }
// */

// pragma solidity >= 0.8.7;
// contract EnumTest
// {
//     enum test 
//     {
//         Small,Medium,Large
//     }
//     test choice;
//     test constant default_value = test.Large;
//     function set() public
//     {
//         choice = test.Small;
//     }
//     function get() public view returns(test)
//     {
//         return choice;
//     }
//     function getdefaultvalue() public pure returns (test)
//     {
//         return default_value;
//     }

// }



// pragma solidity >=0.8.7;
// contract test {
//  struct Book 
//  {
// 	string name;
// 	string writter;
// 	uint id;
// 	bool available;
// }
// Book book1;
// Book book2 = Book("Building Ethereum DApps","Roberto Infante ",2, false);
// function set_book_detail() public
//  {
// 	book1 = Book("Introducing Ethereum and Solidity","Chris Dannen",1, true);
// }

// function book_info()public view returns (string memory, string memory, uint, bool) 
// {
// 		return(book2.name, book2.writter,book2.id, book2.available);
// 	}
	
// function get_details(
// ) public view returns (string memory, uint) {
// 	return (book1.name, book1.id);
// }
// }