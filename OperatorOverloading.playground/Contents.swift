//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var simpleSum = 1 + 3 - 3 * 2
var sumArray = [1, 2] + [1, 2]
func add(_ left:[Int], _ right:[Int])-> [Int]  {
    var sum = [Int]()
    assert(left.count == right.count, "Vector of same length only")
    for (key,v) in left.enumerated() {
        sum.append(left[key] + right[key])
    }
    return sum
}
var arra1 = [1,1]
var arr2 = [1,1]
var arr3 = add(arra1,arr2)



