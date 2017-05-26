//: 2.6 Optionals

import UIKit

//: 2.6.1 Declaring an optional
var main:String?                                    // declare an optional

main = "Steak"                                      // assign value to an optional

// this does not work
//print("Your \(main.uppercased()) is served!")       // Error

//: 2.6.2 Unwrapping an optional
//: Forced unwrapping
print("Your \(main!.uppercased()) is served!")

// Optional binding
if let mainValue = main {
    print("Your \(mainValue.uppercased()) is served!")
}

if let main = main {
    print("Your \(main.uppercased()) is served!")
}

var drink:String? = "Malbec"
if let main = main, let drink = drink {
    print("Your \(main.uppercased()) pairs well with \(drink.uppercased())")
}

//: Guard statement
func serve(drink: String) -> String {
    guard drink != "Kool-Aid" else {
        return("Don't drink the Kool-Aid!")
    }
    return("Your \(drink) is served")
}

func serve(drink: String? = nil) -> String {
    guard let drink = drink else {
        return("No drink for you")
    }
    guard drink != "Kool-Aid" else {
        return("Don't drink Kook-Aid!")
    }
    return("Your \(drink) is served")
}

// this can be merge into function
func serveMerge(drink: String? = nil) -> String {
    guard let drink = drink, drink != "Kool-Aid" else {
        return "No drink for you"
    }
    return "Your\(drink) is served"
}

//: Unwrapping with operators
var defaultMix = "Stirred"
var specialMix:String?                                  // Define string optional
specialMix = "Shaken"                                   // Set optional
let prepareMartini = specialMix != nil ? specialMix : defaultMix

// in a shorter way with ??
let prepareAnotherMartini = specialMix ?? defaultMix

//: Implicitly unwrapped optionals
var mainImplicit:String!
mainImplicit = "Steak"
print("Your \(mainImplicit.uppercased()) is served!")

//: 2.6.3 Optional chaining
var reserved = [[true, true, false], [false, false, false], [true, true, false]]

if let firstRow = reserved.first, let firstTable = firstRow.first {
    let reservedText = firstTable ? "reserved" : "vacant"
    print("Best table in the house is \(reservedText)!")
}
// more succinct alternative
if let firstTable = reserved.first?.first {
    let reservedText = firstTable ? "reserved" : "vacant"
    print("Best table in the house is \(reservedText)!")
}