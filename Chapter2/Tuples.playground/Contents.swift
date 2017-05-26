import UIKit
//: 2.7 Tuples
// Tuple is a group of related data but it is not a collection

var meal1:(String,Double)                       // Declare a tuple. Specify data types of elements
var meal2 = ("Turkey chili soup", 2.99)         // Initialize a tuple. Infer data types
print("\(meal2.0) costs \(meal2.1)")            // Set/get tuple elements with index numbrers
var meal3:(name:String, price:Double)           // Optionally give elements of tuple a name
var meal4 = (name:"Bread", price:2)             // You can also initialize tuple with names
meal4.price = 3                                 // Set/get tuple elements with names if available

//: 2.7.1 Tupes as return values
func chefSpecial() -> (name: String, price: Double) {
    return(name:"Crab bisque", price:3.99)
}
var meal = chefSpecial()

typealias Meal = (name: String, price: Double)
func chefSpecialTypeAlias() -> Meal {
    return(name:"Crab bisqe", price:3.99)
}
var mealAnother = chefSpecialTypeAlias()

//: 2.7.2 Tuple magic
//: Initializing variables based on a tuple
var soup = (name:"Jambalaya", price:2.99)
var (soupName, soupPrice) = soup
print("\(soupName) costs \(soupPrice)")

//: Defining two values at once using a tuple
var (soupName1, soupPrice1) = ("Tomato soup", 1.99)
print("\(soupName1) costs \(soupPrice1)")

//: Swapping two values using tuples
var mealLeftHand = "Fish and chips"
var mealRightHand = "Burger and fries"
print("\(mealLeftHand) \(mealRightHand)")
(mealLeftHand, mealRightHand) = (mealRightHand, mealLeftHand)
print("\(mealLeftHand) \(mealRightHand)")
