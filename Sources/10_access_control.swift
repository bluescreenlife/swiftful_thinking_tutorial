import Foundation

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool
    
    // beginner way
//    func updateFavoriteStatus(newValue: Bool) {
//        MovieModel(title: title, genre: genre, isFavorite: newValue)
//    }
    
    // mutating way
    mutating func updateFavoriteStatus(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    // public - anything can get or set these values
    var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    // private - can only be get or set within object
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    
    // private set - read is public, set is private
    private(set) var movie3 = MovieModel(title: "Avengers", genre: .action, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus(newValue: isFavorite)
    }
}

let manager = MovieManager()

// getting and setting from outside the object
let someValue = manager.movie1 // getting the value
manager.movie1.updateFavoriteStatus(newValue: true) // setting a new value
print(manager.movie1)

manager.updateMovie3(isFavorite: true)
print(manager.movie3)

// Version 1 - public - can get and set from outside
// "too public"
let movie1 = manager.movie1
manager.movie1.updateFavoriteStatus(newValue: true)

// Version 2 - can't get or set from outside object - only within
let movie2 = manager.movie2 // cannot access
manager.movie2.updateFavoriteStatus(newValue: false) // cannot access

// Version 3 - can get but not set
let movie3 = manager.movie3 // can access
manager.movie3.updateFavoriteStatus(newValue: false) // cannot access

// Note: private and public are most common, but there are many other methods of access control
// open, public, internal, fileprivate, private
