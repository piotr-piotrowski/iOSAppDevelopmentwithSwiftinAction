import UIKit

//: 2.5 Functions
func serve(drink: String, customer: String) -> String {
    return "\(customer), your \(drink) is served."
}

print(serve(drink: "beer", customer: "Billy"))

//: 2.5.1 Modifying external parameter names
func serveTo(drink: String, to customer: String) -> String {
    return "\(customer), your \(drink) is served."
}

print(serveTo(drink: "beer", to: "Billy"))

//: 2.5.2 Omitting external parameter names
func serveOmit(_ drink: String, to customer: String) -> String {
    return "\(customer), your \(drink) is served."
}

print(serveOmit("beer", to: "Billy"))

//: 2.5.3 Default parameter names
func serveDefault(_ drink: String = "beer", to customer: String = "Billy") -> String {
    return "\(customer), your \(drink) is served."
}

print(serveDefault())