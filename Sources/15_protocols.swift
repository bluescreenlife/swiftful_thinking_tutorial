import Foundation

struct EmployeeModel: EmployeeHasAName {
    let title: String, name: String
}

// protocol: set of rules to be enforced on objects
protocol EmployeeHasAName {
    var name: String { get }
}
