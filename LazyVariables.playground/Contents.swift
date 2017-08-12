//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Test {
    class Person {
        var name: String = ""
        lazy var personlizeGreating: String = {
            [unowned self] in
            return "hello, \(self.name)"
        }()
        init(name: String) {
            self.name = name
        }
    }
}
class Testclass {
    lazy var plyers = Testclass.initialPlayers()
    
    class func initialPlayers() -> [String] {
        let players = ["John Doe"]
        return players
    }
}
let person = Test.Person(name: "Anil")

person.personlizeGreating

