//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// High Order functions of Swift

/* Map : it is use to map to loop over a collection and apply the same operation to each element in collection.
 # The map function returns a array containing the results of applying a mapping or transform function to each item:

*/
/* Noramal version
let values = [2.0, 4.0, 5.0, 7.0]
var squares: [Double] = []
for value in values {
    squares.append(value * value)
}
 */
// Map version
let values = [2.0, 4.0, 5.0, 7.0]
let squares = values.map { $0 * $0}
let square2 = values.map { (value: Double) -> Double in
    return value * value
}
let square3 = values.map{ value in value * value}

print(squares, square2, square3)
let scores = [0, 28, 123]
let words = scores.map {
    NumberFormatter.localizedString(from: NSNumber.init(value: $0), number: .spellOut)
}
print(words)

let milesToPoint = ["point1": 120.0, "point2": 50.0, "point3": 70.0]
let kmToPoint = milesToPoint.map { name, miles in miles * 1.6093}
print(kmToPoint)

let lengthInMeters: Set = [4.0, 6.2, 8.9]
let lengthInFeet = lengthInMeters.map { meters in meters * 3.2808}
print(lengthInFeet)

/* Filter
 use filter to loop over a collection and returns an array containing only those elements that match an include condition.
 */

let digits = [1,4,10, 15]
let even  = digits.filter { $0 % 2 == 0}
print(even)
/* Reduce
 Use reduce to combine all items in a collection to create a single new value.
 */
let items = [2.0, 5.0, 2.9, 2.0]
let total = items.reduce(10.0, +)
print(total)
let codes = ["abc", "ded", "ghi"]
let text = codes.reduce("", +)
print(text)

let names = ["anil", "manoj", "pradip"]
let csv = names.reduce("===") { text, name in
    "\(text),\(name)"
    }
print(csv)
/* FlatMap
 The simplest use is as the name suggest to flatten a collection of collections.
 
 */
let collections = [[5,2,7],[4,8], [9,1,3]]
let flat = collections.flatMap{ $0 }
print(flat)
let people  = ["Tom", nil, "Peter", nil, "Hary"]
let valid = people.flatMap { $0 }
print(valid)

let onlyEven = collections.flatMap {
    intArray in intArray.filter { $0 % 2 == 0}
}
let onlyEven1 = collections.flatMap { $0.filter{ $0 % 2 == 0 } }
let allSquared = collections.flatMap { $0.map{ $0 * $0 } }
let sum = collections.flatMap { $0.reduce(
    0,+
    ) }
let sum1 = collections.map { $0.reduce(
    0,+
    ) }
print(onlyEven, onlyEven1, allSquared, sum, sum1)
// To sum only those numbers greater or equal to even seven we can first filter then reduce
let marks = [5,4,8,2,7,9]
let totalPass = marks.filter { $0 >= 7}.reduce(0, +)
print(totalPass)
//even square numbers only
let numbers = [20,17,35,20 ,12]
let evenSquares = numbers.map{ $0 * $0}.filter{ $0 % 2 == 0 }
print(evenSquares)


