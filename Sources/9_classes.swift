import Foundation

// class - in the heap
// objects in the heap are Reference types
// classes are slower than structs
// when edited, the pointer is referenced, object in memory is changed
// structs better for passing around the app, class better for operating
// on an instance in the app

// mutating is specific to structs

// app architecture - structure on how the code is organized in an app
// view model comes from MVVM - model view viewmodel
// in swiftUI, your model is a class

// all of the data that is needed for some screen
class ScreenViewModel {
    // no implicit init in classes
    // however if class properties are given initial values, don't need an init
    let title: String
    private(set) var showButton: Bool
    
    // same init as a struct, except structs have implicit inits
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // this runs as the object is being removed from memory
        // structs do not have de-init - they are value types, when changed they are
        // essentially destroyed and recreated
        
    }
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}

// this gets stored in memory when created
// here viewModel is a pointer to the object in memory
// struct was var because changing created a new one
// with class, instance is created and values inside can be changed
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)
//viewModel.showButton = false // not accessible with private(set) var
let value = viewModel.showButton // can still get value

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)
// better practice to change class values from within the class itself
