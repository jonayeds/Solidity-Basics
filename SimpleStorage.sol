// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // ==> Solidity compiler version

contract SimpleStorage {
    // // Basic types : boolean, uint --> positive integer, int, address, bytes
    // bool hasFavouriteNumber = true;
    // int256 num = 23; //--> '-int256' : signed integer type of size 256-bit
    // address myAddress = 0x6cfC2468AE9d24cc31c0049cb5F7461d0c967666; // --> address type
    // bytes32 data = "hello";
    // public --> visible externally
    uint256  number = 23; //--> 'uint256' : bit size of the uint number
    //uint256[] listOfNumbers;
    struct Person { // --> custom data type
        uint256 favouriteNumber;
        string  name; 
    }

    // Person public myFriend = Person(10,"Vishal"); // --> creating a variable of type Person
    Person public myFriend = Person({
        name:"Vishal",
        favouriteNumber: 10
    });
    Person[] public friendList; // --> Dynamic array : no limitation on storing values
    // Person[10] public friendList; // --> Static array : can store up to 10 values 
    

    // --- String types ---
    // memory --> only going to exist temporarily ( when the function calls ) 
    // calldata --> temporary variable, cannot be changed or reassigned
    // storage --> permanent variables cant be modified

    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        friendList.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    // mapping --> associate a value with another, 
    mapping(string => uint256 ) public nameToFavouriteNumber;


    
    function store(uint256 _number) public {
        number = _number;
    }

    function retrieve() public view returns(uint256) { // --> view : to read states, cannot modify any variables
         return number;
    }
    // function pureFunction() public pure returns(uint256) { // --> pure : Can only return pure values, cannot return and variables
    //      return 3;
    // }
}

// 0x6cfC2468AE9d24cc31c0049cb5F7461d0c967666