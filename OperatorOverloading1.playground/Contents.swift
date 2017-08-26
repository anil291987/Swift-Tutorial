//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//infix operator ⊕ {associativity left precedence 140}
precedencegroup ComparisonPrecedence {
    associativity: left
    higherThan: LogicalConjunctionPrecedence
}
infix operator ⊕ : ComparisonPrecedence

func ⊕(_ left:[Int], _ right: [Int] ) -> [Int] {
    var sum = [Int]()
    assert(left.count == right.count, "Vector of same length only")
    for (key,_) in left.enumerated() {
        sum.append(left[key] + right[key])
    }
    return sum
}
var arra1 = [1,1,4]
var arr2 = [1,1,5]
var arr3 = arra1 ⊕ arr2