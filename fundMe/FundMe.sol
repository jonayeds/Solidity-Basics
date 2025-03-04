// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// ---- Features ----
// withdraw Funds
// Set A minimum funding value in USD

contract FundMe{
    function fund()public payable { //--> payable: if a function allows payments from wallet
        // Allow users to sent $
        // Have a minimum $ sent
        // require : Checker function if condition doesn`t fulfilled, transaction reverts
        require(msg.value > 1e18, "didn't Sent enough..."); //--> 1e18 = 1*10^18
    }

    function withdraw()public{}
}