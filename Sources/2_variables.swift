import Foundation

let someConstant = true // constant - immutable
var someVariable = true // variable - mutable

// someConstant = false
someVariable = false


var myNumber = 1.234
myNumber = 25.325
myNumber = 7 // int will be converted to match dobule type when compiled
print(myNumber)
// var value can be changed but not type

// if statements

var userIsPremium: Bool = false

if userIsPremium == true { // bracket: "closure"
    print("1 - user is premium")
} else {
    print("1.1 - user is NOT premium")
}

if userIsPremium { // like Python, can abbreviate
    print("2 - user is premium")
}

if userIsPremium == false {
   print("3 - user is NOT premium")
}

if !userIsPremium { // ! = not
    print("4 - user is NOT premium")
}