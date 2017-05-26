import UIKit

// 2.3 Collections
// swift has three main data types for storing different types of collections: arrays, sets and dictionaries
//
// 2.3.1. Arrays
// !!! constants are declared with the let keyword
var friedChickenRecipe:[String] = []                            // Declaring an empty array

friedChickenRecipe = ["Mix spices with flour, sugar and salt"   // Instantiating an array
    , "Dip chicken in egg white and flour"                      // Instantiating an array
    , "Deep fry chicken"                                        // Instantiating an array
    , "Drain on paper towers"]                                  // Instantiating an array

friedChickenRecipe.insert("Check chicken temp.", at: 3)         // Add elements to an array
friedChickenRecipe.append("Serve!")                             // Add elements to an array

for step in friedChickenRecipe {                                // Iterate over array
    print(step)                                                 // Iterate over array
}                                                               // Iterate over array

for (index, step) in friedChickenRecipe.enumerated() {          // Iterate over array with index
    print("Step \(index+1): \(step)")                           // Iterate over array with index
}                                                               // Iterate over array with index

let firstStep = friedChickenRecipe.first                        // Extract element from array
let secondStemp = friedChickenRecipe[1]                         // Extract element from array

let fristTwoStemp = friedChickenRecipe[0...1]                   // Extract range of elements from array

let preRecipeSteps = ["Preheat oven to 350°F"]
friedChickenRecipe = preRecipeSteps + friedChickenRecipe        // Concatenating array

// 2.3.2 Sets
// A set stores values of the same data type in an unordered list
var herbsNSpices:Set<String>                                    // Declare a set

herbsNSpices = ["Salt", "Thyme", "Oregano", "Celery Salt"       // Initialize a set
    , "Black Pepper", "Dried Mustard", "Paprika", "Garlic Salt" // Initialize a set
    , "Ground Ginger", "White Pepper", "MSG"]                   // Initialize a set

herbsNSpices.insert("Basil")                                    // Add element to a set

herbsNSpices.remove("MSG")                                      // Remove element from a set

for herbsNSpice in herbsNSpices {                               // Iterate over set
    print(herbsNSpice)                                          // Iterate over set
}                                                               // Iterate over set

var otherIngredients:Set = ["Chicken", "Egg white"
    , "Brown Sugar"]
var allIngredients = herbsNSpices.union(otherIngredients)       // Combining sets

// 2.3.3 Dictionaries
// Dictionaries stores a series of values indexed by a key.
var abbreviations:[String:String] = [:]                          // Declare an empty dictionary

abbreviations = ["tsp":"teaspoon"                               // Initialize a dictionary
    , "tbs":"tablespoon"                                        // Initialize a dictionary
    , "qt":"quarts"]                                            // Initialize a dictionary

let teaspoon = abbreviations["tsp"]                             // Extract element from dictionary

abbreviations.isEmpty                                           // Check if dictionary contains data

abbreviations["qt"] = nil                                       // Remove element from a dictionary

for (abbreviation, measurement) in abbreviations {              // Iterate over a dictionary
    print("\(abbreviation) is \(measurement)")                  // Iterate over a dictionary
}                                                               // Iterate over a dictionary

let abbreviationCodes = Array(abbreviations.keys)               // Extract keys
let measurements = Array(abbreviations.values)                  // Extract values
