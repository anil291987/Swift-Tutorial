//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*  Tuple Definition
 Tuple in swift is occupy space between dictionaries ans structures: the hold very specific types of data (like struct) but can be created on the fly (like dictionaries). The are commonly used to return multiple values from a function call.
 */
let person = (name: "Paul", age: 23)
person.name
person.age
person.0
func split(name: String) -> (firstName: String, lastName: String){
    let split = name.components(separatedBy: " ")
    return (split[0], split[1])
}
let parts = split(name: "Paul Hudson")
parts.0
parts.1
parts.firstName
parts.lastName


