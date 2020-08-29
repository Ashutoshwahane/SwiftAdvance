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
