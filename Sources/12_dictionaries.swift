import Foundation

// DICTIONARIES
// accessing is fast
// safer to use since using keys and not indices potentially outside bounds

// array
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)

// set
var fruitSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitSet)

// dict - key and value as in python
var fruitDict: [String : Bool] = ["Apple": true,
                                "Orange": false]

let item = fruitDict["Orange"]
let item2 = fruitDict["Banana"] // safe with dict, optional bool, can return nil

var intFruitDict: [Int : String] = [0: "Apple",
                                    1: "Banana"]

let item3 = intFruitDict[0] ?? "No fruit."
let item4 = intFruitDict[24] ?? "No fruit."// safe, optional string, can return nil
print(item3)

// editing dictionary
// adding to
fruitDict["Mango"] = false
print(fruitDict)
// removing from
fruitDict.removeValue(forKey: "Apple")
print(fruitDict)

// list of struct objects

struct PostModel {
    let id: String, title: String, likeCount: Int
}

var postArray: [PostModel] = [PostModel(id: "abc123", title: "Post 1", likeCount: 10),
                              PostModel(id: "def345", title: "Post 2", likeCount: 15),
                              PostModel(id: "ghi678", title: "Post 3", likeCount: 5)]

// getting an item
if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

// dict of struct objects

var postDict: [String: PostModel] = ["abc123": PostModel(id: "abc123", title: "Post 1", likeCount: 10),
                                     "def345": PostModel(id: "def345", title: "Post 2", likeCount: 15),
                                     "ghi678": PostModel(id: "ghi678", title: "Post 3", likeCount: 5)]

let dictItem = postDict["def345"]
print(dictItem)
