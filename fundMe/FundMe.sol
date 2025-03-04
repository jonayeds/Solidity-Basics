// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// ---- Features ----
// withdraw Funds
// Set A minimum funding value in USD

interface AggregatorInterface {
    function decimals() external view returns(uint8);
    function description() external view returns(string memory);
    function version() external view returns (uint256);
    function getRoundDAte(uint80 _roundId) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
    function lastRoundData() external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}



contract FundMe{
    //--> 1e18 = 1*10^18 wei  = 1 eth 

    uint256 minimumUsd = 5;

    function fund()public payable { //--> payable: if a function allows payments from wallet
        // Allow users to sent $
        // Have a minimum $ sent
        // require : Checker function if condition doesn`t fulfilled, transaction reverts --> undos all the operations in the function 
        require(msg.value >= minimumUsd, "didn't Sent enough..."); 
    }

    function getPrice()public {
        // Address --> 0xB0C712f98daE15264c8E26132BCC91C40aD4d5F9

    }

    function getConversionRate()public {}

    function getVersion() public view returns(uint256){
        return AggregatorInterface(0xB0C712f98daE15264c8E26132BCC91C40aD4d5F9).version();
    }

    function withdraw()public{}
}