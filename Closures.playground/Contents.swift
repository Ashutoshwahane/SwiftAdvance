import UIKit

// ********************** Closures ***************************
/*
 function can be assign to a variable
 */

let driving = {
    print("I'm driving in my Car")
}

driving()

// accepting parameters to Closure
let swiming = {(place : String) in
    print("I want to swim in \(place) beach")
}
swiming("maimi")

// we can return string from closure
let talking = {(name : String) -> String in
    return "I love talking with \(name)"
}
let chatWith = talking("willskhalifa")
print(chatWith)

// Closure as Parameter

func travel(action: () -> Void){
    print("I am getting ready to go !!!!!")
    action()
    print("I am Arrived")
}


// *********** IMP using trailing syntax ************
travel {
    print("using trailing closure syntax")
    print(2*2*2)
}

travel(action: driving)

// using closure as a parameter when they accept parameter
func speakingWith(person : (String) -> Void){
    print("hi Whats UP")
    person("willskhalifa")
}

speakingWith{(person : String) in
    print("I love talking to \(person)")
}

func coding(language : (String) -> String){
    print("What is the most programming lauguage you code")
    let skill = language("Swift")
    print(skill)
    print("great choice")
}

coding{(language : String) -> String in
    return "my favorate programming Language is \(language)"
}

// Swift knows the parameter to that closure must be a string, so we can remove it
// It also knows the closure must return a string, so we can remove that:

coding{language in
    return "my favorate programming language are kotlin and \(language)"
}

// As the closure only has one line of code that must be the one that returns the value, so Swift lets us remove the return keyword too

coding { language in
    "I am also good at python and \(language) "
}

// shorthand parameter and passing multiple parameters

func calculate(sum : (String,Int) -> String ){
    let square = sum("Ashutosh",22)
    print(square)
}

calculate {
    "hey this is \($0) \($1) year old boy"
}

// returning closures

func dancing() -> (String) -> Void{
    return{
        print("returning closure to dancing function \($0)")
    }
}

let dance = dancing()
dance("Michele Jackson")

// capturing values returning value from closure

func clicked() -> (String) -> Void{
    var counter = 1
    
    return{
        print("counter \(counter) for the \($0) time")
        counter += 1
    }
}

let click = clicked()
click("1")
click("2")






