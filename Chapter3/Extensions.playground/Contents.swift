import UIKit

//: 3.3 Extensions
//: Limitations:
// - cannot override functionality
// - can add computed properties but cannot add stored properties
// - cannot add designated initializers

//: 3.3.1 Extensions of your type

//: 3.3.2 Extensions of their type
extension Dictionary {
    func add(other: Dictionary)->Dictionary {
        var returnDictionary:Dictionary = self
        for (key, value) in other {
            returnDictionary[key] = value
        }
        return returnDictionary
    }
}

var someLanguages = ["eng": "English", "esp":"Spanish", "ita":"Italian"]
var moreLanguages = ["de":"German", "ch":"Chinese", "fr":"French"]

var languages = someLanguages.add(other: moreLanguages)
print(languages)

//: 3.3.3 Operator overloading
//func +(left:[String:String], right:[String:String]) -> [String:String] {
//    var returnDictionary = left
//    for (key, value) in right {
//        returnDictionary[key] = value
//    }
//    return returnDictionary
//}
//
//languages = someLanguages + moreLanguages

//: Overload the == operator
func ==(left:[String:String],right:[String:String])->Bool {
    var returnValue = false
    if (left.count == 0 && right.count == 0) {
        return true
    }
    if left.count != right.count {
        return returnValue
    }
    for (key, value) in left {
        if right[key] != value {
            return false
        } else {
            returnValue = true
        }
    }
    for (key, value) in right {
        if left[key] != value {
            return false
        } else {
            returnValue = true
        }
    }
    return returnValue
}

someLanguages == someLanguages
someLanguages == moreLanguages

[:] == someLanguages
someLanguages == [:]
[:] == [:]

//: 3.3.4 Generics

func +<Key, Value>(left: [Key:Value], right: [Key: Value])->[Key:Value] {
    var returnDictionary = left
    for (key, value) in right {
        returnDictionary[key] = value
    }
    return returnDictionary
}
languages = someLanguages + moreLanguages

let someRomanNumerals = [1:"I", 5:"V"]
let moreRomanNumerals = [1:"I", 2:"II"]
let romanNumerals = someRomanNumerals + moreRomanNumerals