import Foundation

var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUserName() -> String {
    userName
}

func getUserIsPremium() -> Bool {
    userIsPremium
}

func getUserInfo() -> String {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return name
}

// using tuple to group return values
func getUserInfo2() -> (String, Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)

let info1 = getUserInfo2()
let name1 = info1.0 // tap into return values of the object using index

func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.name // tap into name of property since was declared in func creation

func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
}

func doSomethingWithUserInfo (info: (name: String, isPremium: Bool, isNew: Bool) ) {
    
}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)
