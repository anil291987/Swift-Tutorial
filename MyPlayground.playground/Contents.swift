//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let array = [1,2,3,9]

let array1 = [1,2,4,4,3,8]
let array2 = [1,3,4,5]

func hasPairWithSum(array: [Int], sum: Int) -> Bool {
    var low = 0
    let high = array.count-1
    while low < high {
        let s = array[low] + array[high]
        if s == sum {
            return true
        }
        low += 1
    }
    return false
}
hasPairWithSum(array: array, sum: 8)
hasPairWithSum(array: array1, sum: 8)
hasPairWithSum(array: array2, sum: 8)
func hasPairWithSumUnSorted(array: [Int], sum: Int) -> Bool {
    var intergerSet: Set<Int> = Set<Int>([])
    for value in array {
        print(intergerSet)
        if intergerSet.index(of: value) != intergerSet.index(of: intergerSet.count-1) {
            return true
        }
        intergerSet.insert(sum - value)
    }
    return false
}
print(array1)
//hasPairWithSumUnSorted(array: array, sum: 8)
//hasPairWithSumUnSorted(array: array1, sum: 8)
hasPairWithSumUnSorted(array: array1, sum: 8)

//Can you Randomly reorder array in O(N) ?
let arr = [1,0,3,9,2]
var dict: Dictionary<String, Int> = [:]
func getRandom(lower: Double, upper: Double) -> Double {
    var random: Double {
        return Double(arc4random()) / 0xFFFFFFFF
    }
    return random * (upper - lower) + lower
}
for value in arr {
    dict.updateValue(value, forKey: String(format: "%.2f", getRandom(lower: 0, upper: 1)))
}
let sortedDict = dict.sorted{ $0.key > $1.key }

print(dict, sortedDict)
//let ranArr = [3,1,9,0,2]
// Rand and second floor 0(n log n)
var rank = ["A", "2", "3", "4","5","6","7","8","9","10","J","k"]
var suit = ["SPADE", "HEART", "DIAMOND", "CLUB"]
var deck = [String]()
for i in suit {
    for c in rank {
        deck.append("\(c)\(i)")
    }
}
func shuffleDeck(deckSuffled: [String]) -> [String] {
    var deckSuffled = deckSuffled
    for i in 0..<deckSuffled.count {
        let j = Int(arc4random_uniform(UInt32(i+1)))
        (deckSuffled[i], deckSuffled[j]) =  (deckSuffled[i], deckSuffled[j])
    }
    return deckSuffled
}
let tmpDeck = shuffleDeck(deckSuffled: deck)
print("Unshuffled: \(deck) \n")
print("Knuth Shuffle: \(tmpDeck) \n")

// Find out Longest Consecutive Characters
let lcc = "AABCDDBBBEA"

