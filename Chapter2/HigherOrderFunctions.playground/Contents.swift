import UIKit

//: 2.8 Higher-order functions
// functions that can receive function as parameters

//: 2.8.1 Map
var soupPrices = [3, 1.99, 2, 1.99, 1.70]

var updatedPrices:[Double] = []
for var price in soupPrices {
    updatedPrices.append(price * 1.1)
}

// a better way
func updatePrice(price:Double)->Double {
    return price * 1.1
}
updatedPrices = soupPrices.map(updatePrice)

//: 2.8.2 Closures
//: Converting a function to a closure
//: 1) Remove the keyword func and the function name:
//(price:Double->Double {
//    return price * 1.1
//}
//: 2) Move the brace to the beginning and replace where was with the keyword in:
//{ (price:Double)->Double in
//    return price
//}

//: Simplifying a closure
updatedPrices = soupPrices.map({
    (price:Double)->Double in
    return price * 1.1
})

// improved:
updatedPrices = soupPrices.map({price in return price * 1.1})

// more improved:
updatedPrices = soupPrices.map({return $0 * 1.1})

// final version:
updatedPrices = soupPrices.map({$0 * 1.1})

//: 2.8.3 Filter
var filteredPrices = soupPrices.filter({$0 >= 2})
for var price in filteredPrices {
    print(price)
}

//: 2.8.4 Reduce
var sortedPrices = soupPrices.sorted(by: {$0>$1})
for var price in sortedPrices {
    print(price)
}