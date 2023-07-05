//Solidity program to demonstrate state variables
pragma solidity ^0.5.0;

// Creating a contract
contract var_Test 
{
    // Declaring a state variable
    uint8 public state_var;

    // Defining a constructor
    constructor() public {
        state_var = 16;
    }
}


