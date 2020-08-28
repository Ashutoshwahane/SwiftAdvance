import UIKit

// Loops in Swift

// **************** For Loop *****************
let count = 1...10
for number in count {
    print("Number is \(number)")
}

// For Loop with Array
let hackerNames = ["MRX", "Clay","Benjamin", "Elliot Anderson", "willskhalifa"]
for hacker in hackerNames {
    print("hacker \(hacker)")
}

// without constant we should use _ so that swift doesn't create needless value
print("Dancer gonna dance")
for _ in 1...5{
    print("Dance")
}

// for a particular range and increment
for i in stride(from: 0, to: 10, by: 1){
    print(i)
}


