import Foundation

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

// shorthand operations, same as python
likeCount += 1 
likeCount -= 1 
likeCount *= 5
likeCount /= 5

// order of operations, swift abides by PEMDAS

likeCount += (likeCount - 1) * 1.5
print(likeCount)

if likeCount == 5 {
    print("Post has 5 likes.")
} else {
    print("Post has \(likeCount) likes.")
}

// && = and, || = or
if likeCount > 3 && commentCount > 0 {
    print("Post is getting hot!")
} else {
    print("Post is cold as ice.")
}

if likeCount > 3 || commentCount > 3 || viewCount > 3 {
    print("Post is heating up!")
} else {
    print("Post is ice cold.")
}

var userIsPremim = false
var userAgeYears = 3

if userIsPremim {
    print("User is among the elite.")
} else {
    //make user elite
    userIsPremim = true
    userAgeYears = 5
    print("User was not among the elite but now they are.")
}

// else if same as python

if likeCount > 20 {
    print("Likes > 0")
} else if commentCount > 20 {
    print("Comments > 0")
} else if viewCount > 20 {
    print("Views > 0")
} else {
    print("User has very little social media clout.")
}