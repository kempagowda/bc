pragma solidity ^0.4.6;

contract SimpleStorage {
    uint256 storedData = 2;

    function set(uint256 x) public {
        storedData = x;
        /*
        Ether Units
        Wei
        Finney
        Szabo
        Ether
        */
        if (2000000000000000000 == 2 ether) {
            storedData = 2;
        } 
        else {
            storedData = 3;
        }
        /*
        Time Units
        seconds
        minutes
        hours
        days
        weeks
        month
        years
        */
        if (120 seconds == 2 minutes) {
            storedData = 6;
        } 
        else {
            storedData = 9;
        }
    }

    function get() constant public returns (uint256 retVal) 
    {
        return storedData;
    }
}

