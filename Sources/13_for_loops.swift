import Foundation

// FOR / FOR EACH LOOPS

//for x in 0..<100 {
//    print(x)
//}

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]
var mySecondArray: [String] = []

for item in myArray {
    print(item)
    
    if item == "Gamma" {
        mySecondArray.append(item)
    }
}

print(mySecondArray)

struct LessonModel {
    let title: String, isFavorite: Bool
}

let allLessons = [LessonModel(title: "Lesson 1", isFavorite: false),
                  LessonModel(title: "Lesson 2", isFavorite: false),
                  LessonModel(title: "Lesson 3", isFavorite: true),
                  LessonModel(title: "Lesson 4", isFavorite: false)]

var favoriteLessons: [LessonModel] = []

for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}

print(favoriteLessons)

for (index, lesson) in allLessons.enumerated() {
    if index == 1 {
//        break
        continue // continue to the next loop, do not finish this loop
    }
    print("index: \(index) || lesson: \(lesson)")
}

// while loops less common in app development (according to YouTuber)
