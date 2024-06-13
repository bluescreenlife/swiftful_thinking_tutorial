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
        return newValue
    } else {
        return false
    }

}

// checkIfUserIsPremium3()

// using guard -- validate a condition first, then continue
// whereas if let entered a closure if a condition was met
// failure entering a closure rather than success entering a closure

func checkUser2() -> Bool {
    guard let newValue = userIsPremium else {
        return false
    }

    return newValue
}

// without creating new value
func checkuser3() -> Bool {
    guard let userIsPremium else {
        return false
    }

    return userIsPremium
}


func checkUser4() -> Bool {
    guard let hasValue = userIsPremium else {
        return false
    }

    return hasValue
}

print(checkUser4())
// *** 3 ways to unwrap optionals ***
// - use nil coalescing, give a default value
// - use if let, enter closure with new value
// - use guard statement, continue if condition met


// -------------------------------------------------------

var userIsNew: Bool? = true
var userCompletedOnboarding: Bool? = true
var userFavoriteMovie: String? = nil

func checkIfUserIsSetUp()-> Bool {

    // newer Swift upgrade: don't need to create new variables when unwrapping - Swift will do it
    if let userIsNew, let userCompletedOnboarding, let userFavoriteMovie {
        // the above lets cannot be nil in order to get into this closure
        // the above lets are not optional, thus can be accessed
    
        return getUserStatus(userIsNew: userIsNew, 
                            userCompletedOnboarding: userCompletedOnboarding, 
                            userFavoriteMovie: userFavoriteMovie) 
                            } else {
                                return false
                            }
}


// using guard

func checkIfUserIsSetUp2() -> Bool {
    guard let userIsNew, let  userCompletedOnboarding, let userFavoriteMovie {
        return false
    }

    return getUserStatus(userIsNew: userIsNew, 
                            userCompletedOnboarding: userCompletedOnboarding, 
                            userFavoriteMovie: userFavoriteMovie) {
                            } else {
                                return false
                            }

}

func getUserStatus(userIsNew: Bool, userCompletedOnboarding: Bool, userFavoriteMovie: String) {
    if userIsNew && userCompletedOnboarding {
        return true
    }

    return false
}

// layered if-let -- avoid this if possible
func checkIfUserIsSetUp3()-> Bool {

    if let userIsNew {
        // userIsNew == Bool

        if let userCompletedOnboarding {
            // userCompletedOnboarding == Bool

            if let userFavoriteMovie {
                // userFavoriteMovie == String

                return getUserStatus(userIsNew: userIsNew, 
                            userCompletedOnboarding: userCompletedOnboarding, 
                            userFavoriteMovie: userFavoriteMovie)

            } else {
                // userFavoriteMovie = nil
                return false
            }

        } else {
            // userCompletedOnboarding == nil
            return false
        }

    } else {
        // userIsNew == nil
        return false
    }
}


// layered guard statement - cleaner code

func checkIfUserIsSetUp4() -> Bool {
    guard let userIsNew {
        // do something
        
    } else {
        return false
    }

    guard let userCompletedOnboarding {
        // do something else
        
    } else {
        return false
    }

    guard let userFavoriteMovie {
        // do a third thing

    } else {
        return false
    }

    return getUserStatus(
        userIsNew: userIsNew,
        userCompletedOnboarding: userCompletedOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )

}


// optional chaining

func getUsername() -> String? {
    return "username"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    let username : String? = getUsername()
    let usernameCount : Int = username?.count ?? 0// gets the count if username is not nil

    let title: String = getTitle()
    let titleCount = title.count // gets the count

    // optional chaining - if username has a value, and first char has a value, return the value of isLowercase
    let firstCharIsLower = username?.first?.isLowercase 
}

// review: unwrapping optionals: nil coalescing - if let - guard statements