import Foundation

// optionals may or may not have a value assigned
// (as in python a variable can be assigned None for later usage)

// unwrap: removing the optional nature of an optional...?
// * always safely unwrap optionals - or could crash app

// python None = swift Nil

var myBool: Bool? = nil // ? makes it optional, allows nil value

// myBool = true
// print(myBool)
// myBool = false
// print(myBool)
// myBool = nil
// print(myBool)

// "nil coalescing" operator

let newValue: Bool? = myBool
let newValue2: Bool = myBool ?? false // ?? sets default value - needed once called upon

print("New value 2: \(newValue2)")

// var myString: String? = "hello" ?? "goodbye"
var myString: String? = nil

print(myString ?? "no value assigned")

// -------------------------------------------------------

var userIsPremium: Bool? = nil ?? true

// 1 - optional in return - runs but warns of no default value, cast bool as any
func checkIfUserIsPremium() -> Bool? {
    // return userIsPremium
    userIsPremium // do not need return keyword if there is nothing else but the return content
}

// 2 - optional within function
func checkIfUserIsPremium2() -> Bool {
    // return userIsPremium
    userIsPremium ?? false // do not need return keyword if there is nothing else but the return content
}

let isPremium = checkIfUserIsPremium2()
print(isPremium)


// if-let

func checkIfUserIsPremium3() -> Bool {

    // if there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        print(newValue)
        return newValue
    } else {
        return false
    }

}

checkIfUserIsPremium3()