//: Playground - noun: a place where people can play

import UIKit

for index in 0...3 {
    print("Current index in range is: \(index)")
}
for index in (0...3).reversed() {
    print("Current index reversed range is: \(index)")
}

var weaponsList = ["Dagger", "Sword", "Club"]

for weapon in weaponsList {
    print("Player has a \(weapon)!")
}

var playerScores = [
    "Calvin": 2100,
    "Jennifer": 2700,
    "Debbie": 3000,
]

for (name, score) in playerScores {
    print("\(name) scored \(score) points.")
}

var myString = "LOL"

for character in myString.characters {
    print(character)
}


for _ in 1...3 {
    print("Bang!")
}
for index in stride(from: 0, to: 10, by: 5) {
    print("Stride index: \(index)")
}

let numRocketsToFire = 3
var rocketCount = 0

while rocketCount < numRocketsToFire {
    
    rocketCount += 1
    
    print( "Firing rocket #\(rocketCount)" )
}

var answer = 0

while answer < 100 {
    
    print("Testing answer \(answer)")
    
    if answer == 42 {
        
        // If the number is 42 - stop looping and jump out of the loop's body!
        print("We just found it... The Answer to the Ultimate Question of Life, the Universe, and Everything!")
        break
    }
    
    answer += 1
}

answer = 0

while answer < 50 {
    
    answer += 1
    
    print("Testing answer \(answer)")
    
    if answer != 42 {
        
        // If the answer is not equal to 42 - keep looping, but jump straight
        // back to the top!
        continue
    }
    
    print("We just found it... The Answer to the Ultimate Question of Life, the Universe, and Everything!")
    break
}

var number = 0

repeat {
    
    print( "Repeating \(number)" )
    
    number += 1
    
} while number < 5  
