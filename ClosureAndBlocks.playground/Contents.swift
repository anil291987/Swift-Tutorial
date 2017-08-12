//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/* Block Definition
 block is just a piece of code that can be composed by statement and declarations.
 */
/* Closure Definition
 closure is a real first class object, a real variables that has a block as its value.
 */
//assert({()-> Bool in return false}(),"No user has been set", file: #file, line: #line)

//@autoclosure creates a automatic closure around the expression. So When the caller writes an expression like 2 < 1, it's automatically wrapped into a cluse to become {2>1} before it is passed to f.
func f(pred: @autoclosure () -> Bool) {
    if pred() {
        print("It's true")
    }
}
f(pred: { 2 > 1}())
f(pred: 2 > 1)

func simpleAssert(_ condition: @autoclosure () -> Bool, message: String ){
    if !condition() {
        print(message)
    }
}
let testNumber = 5
simpleAssert(testNumber % 2 == 0, message: "testnumber isn't an even number.")
