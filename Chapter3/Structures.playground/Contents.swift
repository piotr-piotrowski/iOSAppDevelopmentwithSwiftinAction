import UIKit

//: 3.2 Structures
// similar to classes

//: 3.2.1 Structures vs classes
//: Stuctures cannot inehrit (adopting protocols to indirectly inherit functionality).
//: Memberwise initializers (automatically generated if lack one).
//: Structures are value types
// Classes are designed as references, and structures are assigned as values.
struct ColorStruct {
    var name = "red"
}
var color1 = ColorStruct()
var color2 = color1
color2.name = "blue"
print(color1.name)

//: Constants

//: Which object type?
// - does the type need to subclass?
// - should instances of this type be one of a kind?
// - is the value tied  to the identity of this type?