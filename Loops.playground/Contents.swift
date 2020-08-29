import UIKit

// Loops in Swift

// **************** For Loop *****************
/*
 
 Swift has a few ways of writing loops, but their underlying mechanism is the same: run some code repeatedly until a condition evaluates as false.
 */
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

// **************** While Loop ********************
/*
 
 A second way of writing loops is using while: give it a condition to check, and its loop code will go around and around until the condition fails.
 
 */

var num = 1
while num<=20 {
    print(num)
    num += 1
}
print("Ready, here I come")


// *************** Reapet Loop *************
/*
 
 The third way of writing loops is not commonly used, but it’s so simple to learn we might as well cover it: it’s called the repeat loop, and it’s identical to a while loop except the condition to check comes at the end.
 
 */

var no = 1
repeat{
    print(no)
    no += 1
}while no <= 10
print("it is similar to do while loop")
//while false {
//    print("This is false")
//}
repeat{
    print("This is False")
}while false


// ****************** Exiting Loop *************
var countDown = 10
while countDown >= 0{
    print("tik tik \(countDown)")
    countDown -= 1
    
    if countDown == 3 {
        print("tik tik \(countDown)")
//        continue
        break
    }
    
}
print("Bom defused")
print("Blast OFF")


// ***************** Infinite Loop **************
var infinity = 0




