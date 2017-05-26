import UIKit

// declare a variable without passing a value to it yet.
var feedback:String                         // declare the variable's data type
var soupPaymentSuccessful = true
if soupPaymentSuccessful {
    feedback = "Soup payment processed"     // pass it a value
} else {
    feedback = "No soup for you!"           // pass it a value
}

// if you declare the data type Xcode will better understand your intention
var quantifySoup:Double = 2                 // clarify the data type as a Double
var priceSoup = 2.99                        // double is inferred
var total = quantifySoup * priceSoup

// 2.2.1 Converting numeric types
var restaurantRent = 809.10                 // this is inferred as Double
var daysInMonth = 31                        // this is inferred as Int
//var dailyRent = restaurantRent / daysInMonth    // this does not work - Double cannot be divided by Int
var dailyRent = restaurantRent / Double(daysInMonth) /// before divide convert Int to Double

var totalPizzaSlices = 8
var numberOfPeople = 3
var slicesPerPerson = totalPizzaSlices / numberOfPeople
var slicesPerPersonDouble = Double(totalPizzaSlices) / Double(numberOfPeople)

// 2.2.2 Concatenating strings
var name = "Piotr"
var message = "Welcome " + name

var cost = 3.50
// var message = "Your meal costs $" + cost    // Double must be converted to String
// Two ways:
// 1. Convert a data type
message = "Your meal costs $" + String(cost)
// 2. String Interpolation - better, cleaner and easier to read approach
message = "Your meal costs $\(cost)"
