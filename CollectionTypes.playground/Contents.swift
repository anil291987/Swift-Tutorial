//: Playground - noun: a place where people can play

import UIKit

var emptyArray = [String]()
var weaponList = ["Dagger", "Sword", "Club"]

print(weaponList[0])
print(weaponList[1])
print(weaponList[2])

weaponList[2] = "Battle Mace"

print(weaponList[2])

weaponList.append("Long Bow")

print(weaponList)

weaponList.insert("Broad Sword", at: 2)

print(weaponList)

weaponList.remove(at: 1)
print(weaponList)

weaponList = []

var emptyDict = [String : Float] ()

var playerScores = [
    "Calvin" : 2100,
    "Jennifer" : 2700,
]
print(playerScores["Calvin"])
print(playerScores["Jennifer"])

print(playerScores)

playerScores["Kim"] = 3300

print(playerScores)

playerScores["Kim"] = 3000

playerScores = [:]

var letters = Set<Character>()
print("Our set has \(letters.count) items.")

letters.insert("A")
print("Our set has \(letters.count) items.")

letters.insert("B")
print("Our set has \(letters.count) items.")



