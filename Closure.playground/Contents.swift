//: Playground - noun: a place where people can play

import UIKit
import Foundation
// Defining a function:
func jediGreet(name: String, ability: String) ->(farewell: String, mayTheForceWithYou: String) {
    return ("Good bye, \(name)"," May the \(ability) be with you")
}
// Calling a functions
let retValue = jediGreet(name: "old friend", ability: "Force")
print(retValue)
print(retValue.farewell)
print(retValue.mayTheForceWithYou)

// Functions types
func sum(x:Int, y: Int) ->(Int) {
    return x + y
}
// Passing and returning functions
func jediTrainer () -> ((String, Int) -> String) {
    func train(name: String, times: Int) -> (String) {
        return "\(name) has been trained in the force \(times) times."
    }
    return train
}
let train = jediTrainer()
print(train("Obi Wan",3))
// Variadic functions
func jediBladeColor(_ colors: String...) -> () {
    for color in colors {
        print(color)
    }
}
jediBladeColor("red", "green")

// Defines Closure:
/* syntex:
 { (param) -> returnType in
     statements
 }
*/
var padawans = ["Knox", "Avitla", "Mennaus"]
padawans = padawans.map ({ (padawan: String) -> String in
    "\(padawan) has been trained!"
})
// Closure with known types:
func applyMultiplication(_ value: Int, multFunction: (Int) -> (Int)) -> Int {
    return multFunction(value)
}
print("Closure with known types: \(applyMultiplication(2, multFunction: {value in value * 3}))")

// Closure shorthand argument name:
print("Closure shorthand argument version 0: \(applyMultiplication(2, multFunction: { $0 * 3}))")
print("Closure shorthand argument version 1: \(applyMultiplication(2) {$0 * 3})")

let studentName = {
    print("Welcome to Swift Closures")
}
studentName()

let divide = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}

let result = divide(200, 20)
func ascend(s1: String, s2: String) -> Bool{
    return s1 > s2
}
let strcom = ascend(s1: "swift", s2: "great")

let count = [5,10, -6, 75, 20]
var sortedNumbers = count.sorted { (left:Int, right: Int) -> Bool in
    return left > right
}
print(sortedNumbers)
let asc = count.sorted(by: < )
print(asc)
var letters = ["North", "East", "West", "South"]

public enum LoadingViewStatus {
    case visible(text: String)
    case hidden
}
public protocol LoadingViewPresentable {
    func setLoadingViewStatus(_ status: LoadingViewStatus, animated: Bool)
}
extension LoadingViewPresentable where Self: UIViewController {
    public func setLoadingViewStatus(_ status: LoadingViewStatus, animated: Bool) {
        
    }
    public func defaultLoadingViewStatus(_ status: LoadingViewStatus, animated: Bool) {
        if !isViewLoaded { return }
        switch status {
        case .hidden:
//            let loadingView = view.subviews.flatMap({ $0 ? Loading})
            break
        default:
            break
        }
    }
}
func assert(_ expersssion: @autoclosure () -> Bool, _ message: @autoclosure () -> String) {
    if !expersssion() {
        assertionFailure(message())
    }
}
//UIView.animate(withDuration: 0.25, animations: {
//
//    })
func animate(_ animation: @autoclosure @escaping () -> Void, duration: TimeInterval = 0.25) {
    UIView.animate(withDuration: duration, animations: animation)
}
extension Optional {
    func unwrapOrThrow(_ errorExpression: @autoclosure () -> Error)throws -> Wrapped {
        guard let value = self else {
            throw errorExpression()
        }
        return value
    }
}
struct Post {
    let id: Int
    let author: String
    let title: String
    let text: String
}
class PostTextFromatter {
    private let options: Set<String>
    init(options: Set<String>) {
        self.options = options
    }
    func formatTitle(for post: Post) -> String {
        return post.title.foor
    }
    
}
