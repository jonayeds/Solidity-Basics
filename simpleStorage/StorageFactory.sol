// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorage;
    function createSimpleStorageContract()public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorage);
    }

    // function sfStore (uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
    //     // (Address, ABI: Application Binary Interface ) --> to interact with another contract
    //     SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
    //     mySimpleStorage.store(_newSimpleStorageNumber);
    // }
    
    // function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
    //     SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
    //     return mySimpleStorage.retrieve();
    // }

    function sfAddPerson(string memory _name, uint256 _number, uint256 _simpleStorageIndex) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        mySimpleStorage.addPerson(_name, _number);
    } 

    function sfGetFavouriteNumber(uint _simpleStorageIndex, string memory _name) public view  returns (uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        return mySimpleStorage.getFavouriteNumber(_name);
    }



// // Custom getter to return contract addresses instead of instances
//     function getContractAddress(uint256 index) public view returns (address) {
//         require(index < listOfSimpleStorage.length, "Index out of bounds");
//         return address(listOfSimpleStorage[index]);
//     }
}