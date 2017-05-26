import UIKit

//: 3.1 Classes
//: 3.1.1 Defining a class
//class Distance {
//}
//
//var distance = Distance()

//: 3.1.2 Properties
//: Type properties
//class Distance {
//    static let kmPerMile = 1.60934
//}
//print("2 miles = \(Distance.kmPerMile * 2) km")
//: Instance properties
//class Distance {
//    static let kmPerMile = 1.60934
//    var miles:Double = 0.0
//}
// but this does not make sense. another way:
//class Distance {
//    static let kmPerMile = 1.60934
//    var miles:Double?
//}
// but this also does not make sense

//: 3.1.3 Initializers
// 1) Add an initializer to the Distance class to pass in a value to initialize the miles property.
//class Distance {
//    static let kmPerMile = 1.60934
//    var miles:Double
//    init(miles:Double) {                // Initializer
//        self.miles = miles              // Initialize the miles property
//    }
//}
// 2) instantiate a Distance object
//var distance = Distance(miles: 60)
// 3) add km property
//class Distance {
//    static let kmPerMile = 1.60934
//    var miles:Double
//    var km:Double
//    init(miles:Double) {
//        self.miles = miles
//        self.km = miles * Distance.kmPerMile
//    }
//}
//
//: 3.1.4 Methods
//: Instance Methods


//: Type Methods
// static keyword

//: Overloading
// function can be overloading by defining functions with different parameter names
// initializers can also be overloaded
//class Distance {
//    static let kmPerMile = 1.60934
//    var miles:Double
//    var km:Double
//    init(miles:Double) {
//        self.miles = miles
//        self.km = Distance.toKm(miles:miles)
//    }
//    init(km:Double) {                           // Overloaded initializer
//        self.km = km
//        self.miles = Distance.toMiles(km:km)
//    }
//    static func toKm(miles:Double)->Double {
//        return miles * kmPerMile
//    }
//    static func toMiles(km:Double)->Double {    // Type method
//        return km / kmPerMile
//    }
//}
//
//var distance = Distance(miles: 60)
//print(distance.km)
//var distance2 = Distance(km: 100)
//print(distance2.miles)

//: 3.1.5 Computed properties
//class Distance {
//    static let kmPerMile = 1.60934
//    var miles:Double
//    var km:Double {
//        return Distance.toKm(miles: miles)
//    }
//    init(miles:Double) {
//        self.miles = miles
//    }
//    init(km:Double) {                           // Overloaded initializer
//        self.miles = Distance.toMiles(km:km)
//    }
//    static func toKm(miles:Double)->Double {
//        return miles * kmPerMile
//    }
//    static func toMiles(km:Double)->Double {    // Type method
//        return km / kmPerMile
//    }
//}
//
//var distance = Distance(miles: 60)
//print(distance.km)
//var distance2 = Distance(km: 100)
//print(distance2.miles)

// computed property cannot be update unless:

class Distance {
    static let kmPerMile = 1.60934
    var miles:Double
    var km:Double {                                 // Computed property with getter and setter
        get {
            return Distance.toKm(miles: miles)
        }
        set(newKm) {
            miles = Distance.toMiles(km: newKm)
        }
    }
    init(miles:Double) {
        self.miles = miles
    }
    init(km:Double) {                           // Overloaded initializer
        self.miles = Distance.toMiles(km:km)
    }
    static func toKm(miles:Double)->Double {
        return miles * kmPerMile
    }
    static func toMiles(km:Double)->Double {    // Type method
        return km / kmPerMile
    }
}

var distance = Distance(miles: 60)
print(distance.km)
var distance2 = Distance(km: 100)
print(distance2.miles)


