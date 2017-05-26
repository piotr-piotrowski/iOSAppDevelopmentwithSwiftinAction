// 2.4 Control Flow

import UIKit

var bottles = 99
while bottles >= 0 {                                                // Tests a condition at the start of each loop
    if (bottles == 0) {
        print("No more bootles of beer on the wall")
    } else if bottles == 1 {
        print("1 bottle of beer on the wall")
    } else {
        print("\(bottles) bottles of beer on the wall")
    }
    bottles -= 1
}
// condition can be also tested at the end of each loop with the repeat-while loop
// parentheses around of an if statement are optional

// 2.4.1 For-in
// Two types:
// - iterate over the elements of a collection
// - iterate over a range

for index in 1...3 {
    print("\(index) banana")
}

// ranges:
// - closed: 1...3 // 1, 2, 3
// - half-open: 1..<3 // 1, 2

// reversed method
for index in (1...3).reversed() {
    print("\(index) banana")
}

// lack of increment and decrements operators

// lack of C-style for loop

// 2.4.2 Switch statement
for bottle in (0..<100).reversed() {
    switch bottle {
    case 0:
        print("No more boottles of beer on the wall.")          // No break necessary
    case 1:
        print("1 bootle of beer on the wall.")
    case 2,3,4...100:                                           // Interval matching
        print("\(bottle) bootles of beer on the wall.")
    default:
        print("Something went wrong!")                          // Default makes the switch exhaustive
    }
}