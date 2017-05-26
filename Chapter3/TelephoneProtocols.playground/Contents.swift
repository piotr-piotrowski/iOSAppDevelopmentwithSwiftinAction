//: 3.1.7 Protocols
// Similar to interfaces in other languages
protocol Telephone {
    var phoneNo:Int { get set }                 // protocol property
    func makeCall()                             // protocol method
    func hangUp()                               // protocol method
}

class LandLine:Telephone {
    var phoneNo: Int                            // Adopt the protocol property
    init(phoneNo:Int) {                         // Initialize the property
        self.phoneNo = phoneNo                  // initialize the property
    }                                           // Initialize the property
    //    func makeCall() {                           // After add extension implementation this can be del
    //         make a landline call here
    //    }
    //    func hangUp() {
    //          hang up a landline call here
    //    }
}

//: Protocol Extension
extension Telephone {                           // Extension of protocol
    func makeCall() {                           // Implementation of methods in protocol
        print("Make call")                      // Implementation of methods in protocol
    }                                           // Implementation of methods in protocol
    func hangUp() {                             // Implementation of methods in protocol
        print("Hang up")                        // Implementation of methods in protocol
    }                                           // Implementation of methods in protocol
}

//: Protocol Relationship
// - Like classes, procols can inherit other protocols
// - Types can adopt multiple protocols
// - Protocols can represent different types of relationships
// "is a" and "can do" - common convention for protocols is to suffix its name with "able", "ible" or "ing".