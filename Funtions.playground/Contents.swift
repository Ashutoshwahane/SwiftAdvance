import UIKit

// ******************************* Funtion in Swift ****************

func welcome(){
    let message = """
Hey Welcome to Swift Programming
I am Ashutosh Wahane
"""
    print(message)
}

welcome()


// function with parameters

func calculate(number : Int){
    print("The Square is \(number * number)")
}

calculate(number: 10)

func addFunction(num1 : Int, num2: Int){
    print("The Addition is \(num1 + num2)")
}

addFunction(num1: 10, num2: 10)

// function with return type

func square(num : Int) -> Int{
    return num * num
}
let sqr = square(num: 10)
print(sqr)

// internally it called name
func getName(to name : String, surname : String) -> String {
    return "\(name) \(surname)"
}

// externally it called to
let fullName = getName(to: "Ashutosh", surname: "Wahane")
print(fullName)

// ******************* IMP : when we called print() we don't pass any parameter. we just called it like print("hello world") ********
// We can achive this by using _ underscore

func show(_ str : String){
    print("\(str)")
}
show("Hello World")

// default parameter
func showData(_ name: String, nice: Bool = true){
    if nice{
        print("\(name) happy birthday")
    }else{
        print("birthday nahi hai")
    }
}
showData("pihu",nice: false)

// variadic function
// they accept any number of parameters of same type
// the print() is variadic function
// just add three ... after DataType

func Numbers(no : Int...){
    print(no)
}
Numbers(no: 1,2,3,12,12,1,21,3,23,43,21,34134,34)

// throw an error in function
/*
 sometime function fail because of bad input or something went wrong internally
 so we can handle that error by throwing "throw"
 */

func checkPassword(_ password : String) throws -> Bool {
    if password == "password"{
        throw PasswordError.notAllowed
    }
    return true
}

enum PasswordError : Error{
    case notAllowed
}

do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("you can't use that password")
}

// inout parameter *********************** IMP ********************************
/*
 all parameters passed into function are constant. if we want to change the parameter inside a function and those can be reflect to original value outside of function
 */

func doubleInPlace(number : inout Int){
    number *= 2
}

var num = 10
doubleInPlace(number: &num)
print(num)



