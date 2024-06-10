// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

let myFirstItem = "Hello World" // let is constant, immutable

// can include type in declaration
let myFirstItem2: String = "Hello world"

// reference previously created objects
let myTitle = myFirstItem

// bool 
let mySecondItem = true
let myThirdItem = false

// swift is a type-safe language - compiler will yell

// ----------------------------------------------- //

let myFirstDate: Date = Date() // swift has a date type called Date
print("Current datetime is \(myFirstDate)")

// number can be int, double (float), CGfloat, and more
let myFirstNumber = 1
let mySecondNumber = 1.0 // used for math - 64 bit like python float - double precision
let mySecondNumber2: Float = 3.14159 // 32 bit, single precision
let myThirdNumber: CGFloat = 1.0 // used for UI elements
