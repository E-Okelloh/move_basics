//Practice sui basics
module basics::basics{
//module imports 
//Import necessary modules for my examples
use sui::object::{Self, UID};
use sui ::tx_context::{Self, TxContext};
use sui ::transfer;
use sui::address;
use std::string::{Self, String};
use std::vector;
use std::option::{Self, Option};


// ======================
//VARIABLE AND MUTABILITY
// =======================



//Variable Declaration & Mutability
public fun variable_basics() {
    //Immutable variables (default behavior)
    let x: u8 = 10;//cannot be changed after declaration
    let name =b"Alice"; //Type inference - compiler knowa its a vector<u8>

    //Mutable Variables( Use 'mut' keyword)
    let mut y: u16 = 20; //can be modified
    let mut counter = 0u64; //type suffix notation

    //modifying mutable Variables
    y = y + 5; //Now y= 25
    counter = counter + 1; //Now Counter =1



    //SHADOWING - Creating new variable with same name 
    let x = 100u64; //This is a new Variable , different type
    let x = x + 50;    //Another new variable , x = 150

    //To avoid Compiler warning on unused declared variable
    // Use Underscore
    let _unused = 42; //This won't cause any compiler warning
    
}
// ============================
// PRIMITIVE TYPES
// =============================


//Demonstration of all primitive types
public fun primitive_types_demo(){
    // === UNSIGNED INTEGERS ===
    // Move support various unsigned integer sizes
    let small: u8 = 255; //  0 to 255 (1byte)
    let medium:u16 = 65535; //0 to 65, 535 (2bytes)
    let standard: u32 =1000; //0 to ~4.3 billion (4bytes)
    let large:  u64 = 1_000_000 //0 to ~18 quintillion (8 bytes)


    //Type casting between integers

    let casted = (small as u64); //cast u8 to u64


    // ======BOOLEAN  ====
    let is_active: bool = true;
    let is_complete: bool = false;
    let result = is_active && !is_complete; //Boolean operations


    // ===== ADDRESS ====
    //Address are 32-byte values representing accounts/ objects
    let account_addr: address = @0x1;
    let contract_addr: address = @0x124862e5d06d3976ce0845ec496e8fd5007de5f762fba2b09702123ce6ed247e;


    //Address operations
    let addr_as_u256: u256 = address::to_u256(account_addr);
    let addr_from_u256: address = address::from_u256(12345);


    //Special addresses
    let zero_addr = @0x0;  //Zero address

}


//  =====================
// VECTOR OPERATIONS
//  =====================

//Comprehensive vectotr operations and patterns

public fun vector_operations_demo() {
    // ===VECTOR CREATION ====
    let empty_vector: vector<u64>
vector::
}
}
