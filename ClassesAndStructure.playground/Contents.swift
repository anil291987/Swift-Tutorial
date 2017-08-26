//: Playground - noun: a place where people can play

import UIKit
// Class
class SomeClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}
let aClass = SomeClass(name: "Bob")
var bClass = aClass
bClass.name = "Sue"
print(aClass.name)
print(bClass.name)

