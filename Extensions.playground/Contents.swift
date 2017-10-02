//: Playground - noun: a place where people can play

import UIKit

//-------------------------------------------------------------

// Extensions add new functionality to an existing class, structure, enumeration,
// or protocol type. This includes the ability to extend types for which you do
// not have access to the original source code (known as retroactive modeling).

// Extension is Swift can:

// Add computed properties and computed type properties
// Define instance methods and type methods
// Provide new initializers
// Define subscripts
// Define and use new nested types
// Make an existing type conform to a protocol.

extension Int {
    var squared: Int {
        return (self * self)
    }
}
var myNumber = 3
myNumber.squared
3.squared
//-------------------------------------------------------------
var hello: String = "Hello World"
print(hello.contains("World"))

extension String {
    var isGmailAccount: Bool {
        return self.contains("@gmail.com")
    }
}
var someEmailAddress: String = "jennifer@yahoo.com"

print(someEmailAddress.isGmailAccount)

var anotherEmailAddress = "rob@gmail.com"
print(anotherEmailAddress.isGmailAccount)
