import Foundation

//  STRUCT - value type - stored in the stack
// created and mutated (updated)
// fast

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // structs have an implicit init
    // can create own init to customize it
//    init(title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    // init with default value(s) provided
//    init(title: String, dateCreated: Date = .now) { // can set a default value
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
    //
    init(title: String, dateCreated: Date? = .now, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
    
    
    
}

let myObject: String = "Hello, world!"
//let myQuiz: Quiz = Quiz(title: "Quiz1", dateCreated: .now)
//let myQuiz: Quiz = Quiz(title: "Quiz") // no longer requires dateCreated since default set in init
//let myQuiz: Quiz = Quiz(title: "Quiz 1", isPremium: nil)
let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: nil, isPremium: false)


// ------------------------------------------------
// mutating a struct

// immutable struct - all let constants
// if this model is moved around the app, the data won't ever change
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Andrew", isPremium: false)

func markUserPremium() {
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

//markUserPremium()

// ------------------------------------------------

// mutable struct
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Andrew", isPremium: false)

func markUserPremium2() {
    print(user2)
    user2.isPremium = true // able to change property - this mutated the struct
    print(user2)
}

markUserPremium2()

// ------------------------------------------------

// immutable
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    // creates and returns a new instance of the class but with the updated value
    // is not mutating the originial
    func markUserPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: "Andrew", isPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Andrew", isPremium: true)
user3 = user3.markUserPremium(newValue: false)

// ------------------------------------------------

// mutable struct

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool // can only set this value from inside the struct
    
    // define func as mutating if it will change the struct's properties
    // otherwise if struct later declared as a constant,
    mutating func updatePremium(newValue: Bool) {
        isPremium = newValue
    }
    
    mutating func makePremium() {
        isPremium = true
    }
}

var user4 = UserModel4(name: "Andrew", isPremium: false)
user4.updatePremium(newValue: true)
user4.makePremium()
