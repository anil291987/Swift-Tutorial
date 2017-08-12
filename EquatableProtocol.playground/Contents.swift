//: Playground - noun: a place where people can play

import UIKit
/* Equatable
 A type that cn be compared for value equality.
 
 Types that conforms to the Equatable protocol can be compared for equality using the squal to operator(==) or inequality using the not-equal-to operator(!=).
 
 */

let students = ["Anil", "Kartika", "Trushita"]

let nameToCheck = "Anil"

if students.contains(nameToCheck) {
    print("\(nameToCheck) is signed up!")
} else {
    print("No record of \(nameToCheck)")
}
struct StreetAddress {
    let number: String
    let street: String
    let unit: String?
    
    init(_ number: String, _ street: String, unit:String? = nil) {
        self.number = number
        self.street = street
        self.unit = unit
    }
}
extension StreetAddress: Equatable {
    static func ==(lhs: StreetAddress, rhs: StreetAddress) -> Bool {
        return lhs.number == rhs.number && lhs.street == rhs.street && lhs.unit == rhs.unit
    }
   
}
let addresses = [StreetAddress("22132","Grosdn sdas"), StreetAddress("22132","Grosdn sdasdsfsdf")]
let home = StreetAddress("22132","Grosdn sdas")

print(addresses[1] == home)
print(addresses.contains(home))

class IntegerRef: Equatable {
    let value: Int
    init(_ value: Int) {
        self.value = value
    }
    static func ==(lhs: IntegerRef, rhs: IntegerRef) -> Bool {
        return lhs.value == rhs.value
    }

}

let a = IntegerRef(3)
let b = IntegerRef(3)

print(a == a, a == b, separator:",")
let c = a
print(a === a, a === b, separator:",")

