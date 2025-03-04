
// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";


contract AddFiveStorage is SimpleStorage{ //--> inheriting all functionalities from SimpleSotage
    // overrideing
   // --> override : to override any function of the parent class
   // *** --> need to use virtual keyword to override any function in the parent contract function
    function store(uint256 _newNumber)public override  { 
        number = _newNumber + 5;
    }
}