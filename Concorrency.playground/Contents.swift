//: Playground - noun: a place where people can play

import UIKit

//Speedy is like main thread
//Grand Central Dispatch & NSOperationQueue
// FIFO (First In First Out)
// Concurrent Queue and Serial Queue
// Pros & cons
// Serial Queue
// Pridictable Execution Order
// Slower
// Concurrent Queue
// Faster
// Unpredictable Order
// Every App has
// 1 Serial Queue - Main
// 4 Concurrent Queues - Background
var text: String = ""
DispatchQueue.main.async {
    text = "test"
    print(text)
}
DispatchQueue.global(qos: .background).async {
    
}
// Unwrapping Optional
var optionalNumber: Int?
optionalNumber = 23
// IF LET
if let number = optionalNumber {
    print(number)
}else{
    print("number is nil")
}
// GUARD
func tripleFunction(number: Int?) {
    guard let number = number else{
        print("Exiting Function")
        return
    }
    print("My triple number is \(number * 3)")
}
tripleFunction(number: optionalNumber)
//FORCE Unwrapping
let forcedNumber = optionalNumber!
//Optinal Chaining
struct Device {
    var type: String
    var price: Float
    var color: String
}
var myPhone: Device?
myPhone = Device(type: "phone", price: 699.0, color: "space grey")
let devicePrice = myPhone?.price

if let devicePrice = devicePrice {
    print("My total Price: \(devicePrice + 8.99)")
}
// Higher order functions
var myiMacPro = Device(type: "iMac Pro", price: 4999.0, color: "space grey")
var myiPhone6Plus = Device(type: "iPhone", price:799.0, color: "white")
var myiPhone7 = Device(type: "iPhone", price: 699.0, color: "Black")
var myiPad = Device(type: "iPad", price: 599.0, color: "space grey")
var myAppleWatch = Device(type: "Apple Watch", price: 349.0, color: "space grey")
var myAppleTV = Device(type: "Apple TV", price: 199.0, color: "Black")
let myDevices = [myiMacPro,myiPhone6Plus,myiPhone7,myiPad,myAppleTV,myAppleWatch]
// Filter
let iPhones = myDevices.filter({ return $0.type == "iPhone"})
//print(iPhones)
var myPhones: [Device] = []
//for device in myDevices {
//    if device.type == "iPhone"{
//        myPhones.append(device)
//    }
//}
//print(myPhones)

//Map
let candianPrices : [Float] = myDevices.map({ return $0.price * 1.2})
print(candianPrices)

// Reduce
//var totalPrice: Float = 0.0
//for price in candianPrices {
//    totalPrice += price
//}
//totalPrice
let totalCandianPrice: Float = candianPrices.reduce(20000, -)
print(totalCandianPrice)

// Communication Pattern
// Part -1 Delgates and Protocol

// Classes VS Struct
 // Classes is referenctype and struct in value type
class Macbook {
    var year: Int
    var color: String
    init(year: Int, color: String) {
        self.year = year
        self.color = color
    }
}
let myMacBook = Macbook(year: 2016, color: "Space Grey")
let stolenMacBook = myMacBook
stolenMacBook.color = "Green"
print(myMacBook.color)

struct iPhone{
    var number: Int
    var color: String
}
let myIphone = iPhone(number: 7, color: "Black")
var stolenPhone = myIphone
stolenPhone.color = "Red Rose"
print(myIphone.color)


