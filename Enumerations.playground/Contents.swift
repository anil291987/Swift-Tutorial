//: Playground - noun: a place where people can play

import UIKit

// Enumerations
// An enumeration defines a common type for a group of related values and
// enables you to work with those values in a type-safe way within your code.
enum GamePadDirection {
    case up
    case down
    case left
    case right
}
var gamePadInput = GamePadDirection.up

print("Game pad is being pushed: \(gamePadInput).")

// Now, if you're wondering why enumerations are useful, consider the typical
// alternative. Instead of using an enumeration to represent the possible
// Game pad Directions we could've defined a bunch of simple constants values,
// but if we do this, we lose the type safety that enumerations enforce!
/*
 let GamePadUp = 1
 let GamePadDown = 2
 let GamePadLeft = 3
 let GamePadRight = 4
 
 // This works and looks reasonable... so far so good!
 var gamePadDirection = GamePadUp
 
 // But without type safety, we can also do this which makes no sense!
 gamePadDirection = 55
 
 // What does the value 55 mean? Swift will not mark this an error because 55
 // is just as valid a value as 1,2,3, or 4 which are used by the constants.
 */

//------------------------------------------------------------------------------
// A switch statement is a great way to process the value of a variable that is
// an enumeration type.

gamePadInput = GamePadDirection.down
switch gamePadInput {
    
case .up:
    print("The game pad is being pushed up!")
    
case .down:
    print("The game pad is being pushed down!")
    
case .left:
    print("The game pad is being pushed left!")
    
case .right:
    print("The game pad is being pushed right!")
}
//------------------------------------------------------------------------------
// Raw Values
// Enumeration cases can have actual values (called raw values), assigned to them
// as long as they are all of the same type and all unique.
enum Team: String {
    case a = "Alpha"
    case b = "Bravo"
    case c = "Charlie"
}
var team1 = Team.a

print(team1)
print(team1.rawValue)

// If we assign Raw Values to the enumeration's, the enumeration automatically
// receives an initializer that can be used to create a new enumeration
// variable by passing in one of the Raw Values.
var team2 = Team(rawValue: "Bravo")

print("\(team2)")

// If the raw value that was passed in can not be turned into an enumeration
// the initializer will return nil.
var team3 = Team(rawValue: "X-Ray")

print("\(team3)")

//------------------------------------------------------------------------------
// Implicitly Assigned Raw Values
// When you’re working with enumerations that store integer or string raw values,
// you don’t have to explicitly assign a raw value for each case. When you don’t,
// Swift will automatically assign the values for you.
enum GameServerErrors: Int {
    
    case findLevelData = 500
    case loadLevelData // This will automatically bet set to 501
    
    case findPlayerData // This will automatically bet set to 502
    case loadPlayerData // This will automatically bet set to 503
    case savePlayerData // This will automatically bet set to 504
}
// If you want to know what the raw value of the enumeration value is, you can
// call .rawValue on an enumeration variable to access it.
var error = GameServerErrors.loadLevelData

print(error.rawValue)

error = GameServerErrors.savePlayerData

print(error.rawValue)

//------------------------------------------------------------------------------
// Associated Values
// You can define Swift enumerations that are capable of storing associated
// values which allow the enumeration types to be customized during assignment.
enum WeaponTypes {
    
    case sword(String, Int)
    case bow(String, Int)
    case woodenClub(Int)
    case rock(Int)
}

var playerWeapon = WeaponTypes.sword("Short Sword", 25)
playerWeapon = .bow("Long Bow", 10)
playerWeapon = .woodenClub(2)
playerWeapon = .rock(1)
switch playerWeapon {
    
case .sword(let name, let damage):
    print("The player is attacking with a \(name) for \(damage) points of damage.")
    
case .bow(let name, let damage):
    print("The player is attacking with a \(name) for \(damage) points of damage.")
    
case .woodenClub(let damage):
    print("The player is attacking with a WoodenClub for \(damage) points of damage.")
    
case .rock(let damage):
    print("The player is attacking with a rock for \(damage) points of damage.")
}
//------------------------------------------------------------------------------
// Assigning a Default Enumeration Value
// If you don’t want to select a specific enumeration value when creating an
// instance then you can provide an initializer method which defaults to one of
// the enumeration values.
enum ArmorTypes {
    
    case leather
    case chainMail
    case plate
    
    init() {
        
        // Everyone has at least Leather armor!
        self = .leather
    }
}

var armor = ArmorTypes()

print("Default armor type is: \(armor)")
