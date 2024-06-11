import Foundation

// def in python, func in swift

func someFunction() {
    print("Function has been called.")
    otherFunction()
}

func otherFunction() {
    print("Second function has been called.")
}

someFunction()

func getUserName() -> String {
    let username: String = "Andrew"
    return username
}

var name: String = getUserName()

print("My name is \(name)")

// ------------------------------------------

func initUser() {
    let onboardingCompeted: Bool = true
    let profileCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: onboardingCompeted, 
                                didCreateProfile: profileCreated)

    if status {
        print("REDIR HOME SCREEN")
    } else {
        print("REDIR ONBOARDING SCREEN")
    }
}

func checkUserStatus(didCompleteOnboarding: Bool, didCreateProfile: Bool) -> Bool {
    if didCompleteOnboarding && didCreateProfile {
        return true
    } else {
        return false
    }
}

initUser()

// -------------------------------------------------

let newValue = doSomething()

// void returns nothing, doesn't need to be included
// however if a func has a return type, func must result in a return of that type
func doSomething() -> String { 
    let title: String = "Infinite Jest"

    if title == "Infinite Jest" {
        return "Good book"
    } else {
        return "Not so sure"
    } // any possible condition is caught by this point, compiler will compile
}

// func using guard statement
let thing = doSomethingElse()

func doSomethingElse() -> Bool {
    let title : String = "Infinite Jest"

    // guard will make sure a condition is met
    guard title == "Infinite Jest" else {
        // this closure will be entered if guard condition is not met
        print("Not so sure")
        return false
    }

    print("Good book")
    return true
}

print(thing)

// calculated variables
// generally good when no need to pass in data to a function

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
} // method 1

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
} // method 2

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)

print(result1, result2)

var calculateNumber: Int {
    return number1 + number2
} // method 3 - calculated variable - executed every time it's called

print(calculateNumber)