import Foundation

// Enum is the same as Struct, except we know all cases at runtime

struct CarModel {
    let make: MakeOption
    let model: String
}

//var car1: CarModel = CarModel(make: "Ford", model: "Fiesta")
//var car2: CarModel = CarModel(make: "Toyota", model: "Prius")
//var car3: CarModel = CarModel(make: "Honda", model: "Civic")
// ^ an Enum could restrict make to specific makes, for example

struct CarMake {
    let title: String
}

//var make1 = CarMake(title: "GMC")
//var make2 = CarMake(title: "Tesla")

//var car1 = CarModel(make: CarMake(title: "Ford"), model: "Fiesta")
//var car2 = CarModel(make: CarMake(title: "Toyota"), model: "Prius")
//var car3 = CarModel(make: CarMake(title: "Honda"), model: "Civic")

// enums are stored in memory the same way as a Struct but we cannot mutate them

enum MakeOption {
    case ford
    case toyota
    case honda
    case tesla
    
    // can also format as: case ford, toyota, honda, tesla
    
    //        if self == .ford {
    //            return "Ford"
    //        } else if self == .toyota {
    //            return "Toyota"
    //        } else ...
    
    // rather than multiple if else's, can use switch statement:
    
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
        case .tesla:
            return "Tesla"
        default:
            return "Default"
        }
    }
}

var car1 = CarModel(make: .ford, model: "Fiesta")
var car2 = CarModel(make: .toyota, model: "Camry")
var car3 = CarModel(make: .honda, model: "Civic")
var car4 = CarModel(make: .tesla, model: "Cybertruck")

var fordBrand: MakeOption = .ford
fordBrand.title
