//------------------------------------------------
// Inheritance

// A class can inherit methods, properties, and other charcterictics from another class. When one class inherits from another, the inherting class is known as a subclass, and the class it inherts from is known as its superclass.

// Our enemy class below defines simple enemies that our players can fight. We've already covered this class in the last lecture.


class Enemy{
    
    var weapon: String = "Club"
    var attackDamage: Int = 5
    var healthPoints: Int = 100
    
    init() {
        print("New Enemy initialized with defaults values!")
    }
    init(weapon: String, attackDamage: Int, healthPoints: Int) {
        print("New enemy initialized with custom values!")
        self.weapon = weapon
        self.attackDamage  = attackDamage
        self.healthPoints = healthPoints
    }
    deinit {
        print("Enemy deinitialized!")
    }
    func attack() {
        print("Enemy attacks with \(weapon) for \(attackDamage) points for damage!")
    }
    func applyDamage(damage: Int) {
        healthPoints -= damage
        print("HealthPoints reduced to \(healthPoints)")
    }
}
//-------------------------------------------------------------

// Now, for the next version of our game, we want to add a new type of enemy that uses magic. We could add new properties and methods to the enemy class so all enmies can use magic, but that's a waste of memory since only the Warlock enemies really need them.

// But if we create a new class called Warlock that inherits from Enemy, we can
// use everything in Enemy and add just the new variables and methods that are
// required to keep track of magic data.

class Warlock: Enemy {
    var spellDamage: Int = 10
    var magicPoints: Int = 500
    
    override init() {
        super.init()
        print("New warlock initilizer with default values!")
        
        weapon = "Magic staff"
        attackDamage = 25
    }
    override func attack() {
        print("Warlock attacks with \(weapon) for \(attackDamage) points of damage!")
        magicPoints -= 5
        print("MagicPoints reduced to \(magicPoints)")
    }
    func castSpell() {
        print("Warlock casts a spell for \(spellDamage) points of damage!")
        
        magicPoints -= 10
        print("MagicPoints reduced to \(magicPoints)")
    }
    
    func teleport() {
        print("Warlock teleports to new a position!")
    }
}

var enemy = Enemy()

print(enemy.weapon)
print(enemy.attackDamage)
print(enemy.healthPoints)

enemy.attack()
enemy.applyDamage(damage: 10)



var warlock = Warlock()

print(warlock.weapon)
print(warlock.attackDamage)
print(warlock.healthPoints)
print(warlock.magicPoints)

warlock.attack()
warlock.applyDamage(damage: 10)
warlock.castSpell()
warlock.teleport()
