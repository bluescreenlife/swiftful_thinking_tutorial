import Foundation

// arrays and sets

var myTitle: String = "Hello, world!"
var myTitle2: String = "Goodbye, world!"

// tuple

func doSomething(value: (title1: String, title2: String)) {
    
}

doSomething(value: (myTitle, myTitle2))

// custom data model
struct TitlesModel {
    let title1: String
    let title2: String
}

func doSomething(value: TitlesModel) {
    
}

doSomething(value: TitlesModel(title1: myTitle, title2: myTitle2))

// problem is scaling up with more data

// -----------------------------------------------------------------

let apple = "Apple"
let orange = "Orange"

let fruits: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange] // more common than generic
let fruits3: Array<String> = [apple, orange] // generic

let myBools: [Bool] = [true, true, false, true, false, false]

func doSomething(value: [String]) {
    
}

var fruitsArray: [String] = ["Apple", "Orange", "Banana", "Mango"]

let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last
// first and last are optionals, as the array could be empty therefore values would be nil
// unwrap
if let firstItem = fruitsArray.first {
    // first item
}
// unwrap via guard
func getFirstValue(someArray: [String]) -> String {
    guard let firstVal = someArray.first else {
        return "Array is empty."
    }
    
    return firstVal
}
// unwrap via if let
if let firstValue: String = firstItem {
    print("First item is \(firstValue)")
} else {
    print("Array is empty.")
}

// appending to array
// reminder items in the stack get mutated when edited - new version is created
// objects in heap, like class, are edited in place

fruitsArray = fruitsArray + ["Banana"]
print(fruitsArray)

// instead, append
fruitsArray.append("Strawberry")
// use contentsOf to add multiple
fruitsArray.append(contentsOf: ["Clementine", "Starfruit"])

// use index to fetch other values (as with python/other langs)
print(fruitsArray[2])

if fruitsArray.indices.contains(4) {
    let item4 = fruitsArray[4]
}

let firstIndex = fruitsArray.indices.first
let lastIndex = fruitsArray.indices.last

//print(firstIndex, lastIndex) // compiler yells - what if arrays are empty - so:

fruitsArray.insert("Watermelon", at: 2)
fruitsArray.insert(contentsOf: ["Blueberries", "Raspberries"], at: 4)
fruitsArray.remove(at: 6)
print(fruitsArray)

fruitsArray.removeAll()

struct ProductModel {
    let title: String, price: Int
}

var MyProducts: [ProductModel] = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 75),
    ProductModel(title: "Product 3", price: 25),
    ProductModel(title: "Product 4", price: 30),
    ProductModel(title: "Product 5", price: 500),
    ProductModel(title: "Product 6", price: 10)
]

var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"] // duplicates OK
var fruitSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitSet) // still prints, doesn't include duplicates
// sets do NOT have an order
