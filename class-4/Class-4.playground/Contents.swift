//: Playground - noun: a place where people can play

import UIKit

//Basic enum declaration

//The Int is optional, it gives it an underlying Int raw value (index position of each case) associated to each case. Without Int it will be the case name. You can assign any type value you want to these cases

enum CoolStatus: String{
    
    case NotCool
    case KindaCool
    case Cool
    case SuperCool
    
    func howCoolAmI() {
        print("You are \(self.rawValue)")
    }
    
}

let myStatus = CoolStatus.KindaCool

myStatus.rawValue

myStatus.howCoolAmI()

//Associated Values

//You can specify the type for each case in which the input type will need to be
enum Identification {
    case Social(Int)
    case Email(String)
    case Other(Int, Int, Int)
}

let myId = Identification.Email("adam@codefellows.com")
let social = Identification.Social(1234567)
let weirdId = Identification.Other(5, 10, 100)


//Using switch statements to print
switch weirdId{
case .Email(let email):
    print(email)
    
case .Other(let int1, let int2, let int3):
    print("\(int1):\(int2):\(int3)")

default:
    print("")
}

switch social{
case .Social(let social):
    print(social)
default:
    print("")
}

//Stored Properties
var count = 10
//Computed Properties
var doubleCount: Int {
    return count * 2
}

count
doubleCount

//Singleton

class Store {
//static associates it to the Store class itself and not to any instance created of the Store
    static let shared = Store()
    private init(){}
}

let myStore = Store()
//if you do myStore.shared this will throw an error because shared is not associated to the instance of Store()
Store.shared

//Property Observers (willSet{} didSet{})

var counter = 0

var array = [Int]() {
    didSet{
        counter += 1
    }
}

array.append(5)
array.append(10)

counter

//lazy property is lazy because it won't become instantiated until the property is required. Lazy properties are always variables, never constants


//Type Methods

class CrazyStuff {
    func instanceMethod() {
        print("This is an instance method.")
    }
    //Type Method -> the method is on the class not the instance that was created, this method is accessible to any subclasses but CANNOT be overriden
    static func staticMethod() {
        print("This is a static method.")
    }
    //Type Method -> this method is on the class itself, this method is accessible to any subclasses but ALSO can be overriden
    class func classMethod() {
        print("This is also a static method.")
    }
}

let myStuff = CrazyStuff()

myStuff.instanceMethod()
CrazyStuff.staticMethod()
CrazyStuff.classMethod()

//Advanced Classes
//
//Classes introduce inheritance, overriding, and polymorphism which give them added abilities compared to structs
//
// - Through inheritance, class automatically gets the stored properties declared in the superclass, as well as the initializer and any methods defined within
// - A class that inherits from another class is known as a subclass, and the class from which it inherits as is known as a superclass or a base class
//
//Inheritance
// - A swift class can inherit from only one other class, a concept known as single inheritance
// - There's no limit to the depth of subclassing, meaning you can subclass from a class that is also a subclass
// - A chain of subclasses is called a class hierarchy
//
//Polymorphism
// - a programming languages ability to treat an object differently based on context
// - the most common use of polymorphism in OOP occurs when a parent class reference is used to refer to a child class object
// - it means that your custom UITableViewCell subclass - MyCustomTableViewCell, can be used anywhere a UITableViewCell is expected. If a method has a UITableViewCell parameter, you can pass an instance of your MyCustomTableViewCell
//
//Inheritance and Methods
// - Subclasses receive all stored properties and methods defined in their superclass plus any additional properties and methods that the sub class defines for itself. In that sense, subclasses are additive
// - Besides creating their own methods, subclasses can override methods defined in their superclass
// - When overriding a method, use the override keyword before the method declaration
//
//Super
// - the super keyword is similar to self, except it will invoke the method in the nearest implementing superclass
// - although the compiler doesn't enforce it, it's important to call super when overriding a method in Swift
//
//Preventing Inheritance
// - sometimes you'll want to disallow subclasses of a particular class. Swift provides the final keyword for you to guarantee a class will never get a subclass
// - you can mark individual methods as final, if you want to allow a class to have subclasses, but protect individual methods from being overriden
//
//Inheritance and Class Init
// - phase one: initialize all of the stored properties in the class instance, from the bottom to the top of the class hierarchy. you can't use properties and methods until phase 1 is complete
// - phase two: you can now use properties and methods, as well as initializations that require the use of self
// - required: this keyword will force all subclasses to not only implement this initializer, but also use this initializer when they make their calls to super.init
// - convenience: the compiler forces a convenience initializer to call a required initializer, instead of handling the initialization of stored properties itself. you might want to mark an initializer as convenience if you only use that initializer as an easy way to initialize an object, but you still want it to leverage one of your required initializers
//
//Compiler Rules
// - a designated initializer must call a designated initializer from its immediate superclass
// - a convenience initializer must call another initializer from the same class
// - a convenience initializer must ultimately call a designated initializer
//
// Single Responsibility, Extensibility, Class Lifecycle
// - a class should have a single concern only, and it should own all the functionality it uses
// - sometimes you must subclass if you're extending the behavior of code you don't own
// - in Swift, the mechanism for deciding when to clean up unused objects on the heap is known as reference counting

//Error Handling

enum Error: ErrorType {
    case NoFuel
    case EngineProblem
}

class Vehicle {
    var gasMeter = 0
    //throws is what function we are checking for an error
    func go() throws {
        if self.gasMeter > 0 {
            print("Awesome!")
        } else {
            throw Error.NoFuel
        }
    }
}

let vehicle = Vehicle()
vehicle.gasMeter = 10

//this syntax is necessary for checking for the error
do {
    try vehicle.go()
    print("We are going...")
}

catch {
    print(error)
    
}