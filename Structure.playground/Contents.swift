//: Playground - noun: a place where people can play

import UIKit

// Structures allow us to group of variables and functions together as a new type that can be used in the same way as the built-in types that Swift provides for us.

// Here's example of new type called Player which groups together a bunch of variables which each player in game should have.

struct Player {
    var weapon: String
    var attackDamage: Int
    var healthPoints: Int
}
// All structures have an automatically-generated member-wise initializer, which can be use to initializer the member properties of new structure instances. Initial values for the properties of the new instance can be passed the member-wise initializer by name:
var player1 = Player(weapon: "Club", attackDamage: 10, healthPoints: 100)
var player2  = Player(weapon: "Sword", attackDamage: 15, healthPoints: 75)
player1 = player2
player1.weapon = "Ax"
player1.attackDamage = 15
player2

// Initializers

// If we don't like the automatically-generated Member-wise Initializer, we can define own initializers by adding one or more version of init method. but, once you define a custom initializer, we can no longer use the automatically-generated member-wise initializer. If we want a custom init and member-wise initializer, we will have to manually define both.

struct Color{
    
    let red, green, blue : Float
    
    init(red: Float, green: Float, blue: Float) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Float) {
        red = white
        green = white
        blue = white
    }
}
// Both initializers can be used create a new color instance, by providing names values for each initializer parameter:

// Create a new color instance by setting all three color properties at once:
let purple = Color(red: 1.0, green: 0, blue: 1.0)

// Create a new color instance that is grey-scaled by setting only a white value.
let gray = Color(white: 0.5)

// Methods

// Methods are functions that are associated with a perticular structure or class. These methods are typically designed to modify the variables held by the structure or class that defines them.

// For example, if we're making a game that has a lot of enemies for our player to fight, it would make sence to create a new type to represent the enemies which not only includes their data but methods that allow us to modify that data.

struct Enemy{
    
    var weapon: String = "Club"
    var attachDamage: Int = 5
    var healthPoints: Int = 100
    
    init() {
        print("New Enemy initialized with defaults values!")
    }
    init(weapon: String, attachDamage: Int, healthPoints: Int) {
        print("New enemy initialized with custom values!")
        self.weapon = weapon
        self.attachDamage  = attachDamage
        self.healthPoints = healthPoints
    }
    func attack() {
        print("Enemy attacks with \(weapon) for \(attachDamage) points for damage!")
    }
    mutating func applyDamage(damage: Int) {
        healthPoints -= damage
        print("HealthPoints reduced to \(healthPoints)")
    }
}
var enemy1 = Enemy()
enemy1.attack()
enemy1.applyDamage(damage: 15)

var enemy2 = Enemy(weapon: "Sword", attachDamage: 25, healthPoints: 100)

enemy2.attack()
enemy2.applyDamage(damage: 5)

