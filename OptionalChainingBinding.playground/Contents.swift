//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Person{
    //Store Property
    var residence: Residence?
}
class Residence{
    var rooms = [Room]()
    //Computed Property
    var numberOfRooms : Int {
        return rooms.count
    }
    subscript(i:Int)-> Room {
        get {
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of room is \(numberOfRooms)")
    }
    var address : Address?
}
class Room{
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Address{
    var buldingNumber: String?
    var buildingName: String?
    var street: String?
    
    func buildingIdentifier() -> String? {
        if let buildingNumber = buldingNumber, let street = street {
            return "\(buildingNumber)\(street)"
        } else if  buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}
let john = Person()
//Force Unwrapping example
//let roomCount = john.residence!.numberOfRooms
//Optinal Chaining
if let roomCount = john.residence?.numberOfRooms {
    print("john's residence has \(roomCount) tooms(s).")
} else {
    print("Unable to restive the number of rooms.")
}
let someAddress = Address()
someAddress.buldingNumber = "29"
someAddress.street = "Acacid Road"
func createAddress()-> Address{
    print("Function was called")
    let someAddress = Address()
    someAddress.buldingNumber = "29"
    someAddress.street = "Acacid Road"
    return someAddress
}
john.residence?.address = createAddress()

if john.residence?.printNumberOfRooms() != nil {
    print("It was possible to print numbers")
} else {
    print("It wasn't possible to print numbers")
}
if (john.residence?.address = someAddress) != nil {
    print("It was possible to set the address")
} else{
    print("It was not possible to set the address")
}

john.residence?[0] = Room(name: "Bathroom")
let johnHouse = Residence()
johnHouse.rooms.append(Room(name: "Living Room"))
johnHouse.rooms.append(Room(name: "Kitchen"))
john.residence = johnHouse

if let firstRoomName = john.residence?[0].name {
    print("The first room name is \(firstRoomName)")
}else{
    print("Unable to retrive first roome name")
}
var testScores = ["Dave": [27,23,23], "Bev": [232,2323,23]]
testScores["Dave"]?[0] = 91
testScores["Bev"]?[0] += 1
testScores["Brian"]?[0] = 71
print("\(testScores)")


let johnAddress = Address()
johnAddress.buildingName = "The Lanches"
johnAddress.street = "Laureal street"
john.residence?.address = johnAddress

if let johnStreet = john.residence?.address?.street {
    print("John's street name \(johnStreet)")
} else{
    print("Unable to retrive address")
}
if let buildingIdentifier = john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    print("John's bulding identifier begin with \"The\".")
} else {
    print("John's bulding identifier not begin with \"The\".")
}

