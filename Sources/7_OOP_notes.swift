// objects are initialized and de-initialized - init/de-init
// Automatic Reference Counting (ARC) - a live count of objects in memory
// - higher the count, slower the app
// - want to keep the ARC count as low as possible
// - want objects to only be created when needed, destroy when no longer needed
// in the case of 2 screens, you want to load a screen only when needed by the user

// 2 types of memory - stack and heap
// ARC = objects in the heap
// stack = string, bool, int, basic types + NEW: struct, enum
// heap = functions, classes, actors

// iPhone is a multi-threaded env
// each thread has a stack -- does he mean each stack takes a thread?
// 1 heap for all threads -- does he mean 1 thread for the heap?
// stack is faster, lower memory footprint, preferable
// heap is slower, higher memory footprint, risk of threading issues

// Value vs. Reference types
// objects in the stack are "value" types - when edited, a copy is created with new data

// objects in the heap are "Reference" type
// When a Reference type is edited, the original & referenced object is edited
// reference is a pointer to an object in the Heap (in memory)

// value type
struct MyFirstObject {
    let title: String = "Hello, world!"
}

// reference type
class MySecondObject {
    let title: String = "Hello, world!"
}

// ELI5: Class v. Struct: (a not perfect metaphor)
// There is a school with classrooms - in each room, teacher will hand out quizzes
// during the day, teacher will hand out many differetn quizzes to different classes
// students will answer the quizzes and return the quizzes back to the teacher
// "school" = App
// "classroom" = Class
// "quiz" = Struct - moves, changes, edited all the time

// structs are created and passed around with ease

// class is used for things like "Manager", "DataService", "Service", "Facrtory", "ViewModel"
// -- objects created and actions are performed inside

// struct used for things like data models, objects that are passed around in an app
