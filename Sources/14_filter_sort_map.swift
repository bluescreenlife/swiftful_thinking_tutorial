import Foundation

// FILTERING, SORTING, MAPPING

struct DataBaseUser {
    let name: String, isPremium: Bool, order: Int
}

let allUsers: [DataBaseUser] = [DataBaseUser(name: "Andrew", isPremium: true, order: 1),
                           DataBaseUser(name: "Jenny", isPremium: false, order: 2),
                           DataBaseUser(name: "Marshall", isPremium: true, order: 3)]

// manually
//for user in allUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}

// with filter
//var allPremiumUsers: [DataBaseUser] = allUsers.filter { user in
//    if user.isPremium{
//        return true
//    }
//
//    return false
//}

// simplified version
var allPremiumUsers: [DataBaseUser] = allUsers.filter { user in
//    return user.isPremium // reminder, if closure only includes a return, don't need the return keyword
    user.isPremium
}

// shortand technique for referecning the current iterable: $0
var allPremiumUsers2: [DataBaseUser] = allUsers.filter({ $0.isPremium })

print(allPremiumUsers)

// sort
var orderedUsers: [DataBaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}

// shorthand sort - again $0 and $1 refer to the indices of items to be sorted
var orderedUsers2: [DataBaseUser] = allUsers.sorted(by: { $0.order < $1.order} )

print(orderedUsers)

// mapping - taking data from one source and placing it in a new location
var userNames: [String] = allUsers.map { user in
    return user.name
}

// shorthand map
var userNames2: [String] = allUsers.map({ $0.name })

print(userNames)
