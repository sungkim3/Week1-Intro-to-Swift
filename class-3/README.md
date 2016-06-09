#Week 1 - Class 3
##Lab Assignment
* Define ToDo class.
* Implement NSCoding protocol.
* Define ToDo protocol.
* Extend ToDo protocol to provide basic implementation for certain functions.

###Reading Assignment
* Swift Programming Guide
  * Structures
  * Classes
  * Enumerations
  * Properties
  * Methods
  * Protocols
  * Protocol-oriented Programming

##Other Resources
* [Reading Assignments](../../Resources/ra-grading-standard/)
* [Grading Rubrics](../../Resources/)
* [Lecture Resources](lecture/)
* [Lecture Slides](https://www.icloud.com/keynote/000JXBygEu1iK3cgHSJeNc3Gg#Week1_Day3)

##Structures
Structures, or structs, are one of the name types in swift that allow you to encapsulate related properties and behaviors

struct Person {
  var name: String
  var age: Int
}

- this block of code demonstrates the basic syntax for defining a structs
- the basic syntax begins with the struct keyword
- everything between the curly braces is a member
- to access the properties use the dot syntax

- when you create an instance of a type such as Person, you need to use a special kind of function called an initializer. Swift auto does this
- you can create your own initialize, allows you to customize how a structure's members are assigned, overrides the default initializer
- by the end of the initializer, the struct must have initial values set in all of its stored properties
- the one exception to the rule is an optional

introducing self
- when you use self in code you're explicitly accessing the current value of the named types
- not required to use self when writing code within a named type
- especially useful in initializers: when two variables of the same name exist in the same scope, self can prevent what's known as shadowing

methods
- struct can also define its own functions
- like other members of structs, you can use dot syntax to access a method through a value of its associated type

extensions
- you can define member methods and properties in the body or also in extensions
- extensions can be used to extend types you do not own yourself like String
- extensions can be applied to any type you will learn about including structs, classes, and enums

Structures as values
-a value type is an object or a piece of data that is copied on assignment, which means the assignment gets an exact copy of the data rather than a reference to the data
- many of standard Swift types are structs: array, float, double, bool, dictionary, set, and string are all structs

##Classes
classes, which are much like structs they are named types, have stored properties and can define their own methods. classes are reference types instead of value types, have substantially different capabilities and benefits than structs

class Person {
  var firstName: String
  var lastName: String

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

- you MUST provide an initializer in a class
- classes are a mutable reference type
- class stores a pointer to a location in memory

##Heap vs Stack
- when you create a reference type such as class, the system stores the actual value in a region of memory known as the Heap
- a value type such as a struct resides in a region of memory called the Stack
- the system uses the stack to store anything on the immediate thread of execution, tightly managed and optimized by the CPU. when a function creates a variable, the stack stores it then destroys it when the function exits
- the system uses the heap to store data referenced by other objects
- when you create an instance of a class, your code req a block of memory on the heap to store the object itself; it stores the address of that memory in your named variable on the stack
- when you create a struct the value
-

Object Identity
- in swift, the === operator lets you check if the identity of one object is equal to the identity of another
- the == operator checks if two values are equal, the === identity operator compares the memory address of two references

swift includes a language feature known as access control that allows you to specify if other code can see and use entities such as functions, properties, or even types

Access Control
- public: entities are available to code inside the module it is defined in, as well as any module importing the module it is defined in
- internal: entities are available to code inside the module it is defined in, but not to code in a module that imports the module it is defined in
- private: entities are available only to the same file they are defined in

- create a class or struct with methods and properties, by default anything in your code can both see and use those methods and properties
- encapsulation: you want to control how the actual data is operated on by providing methods that operate on that data

Structs Vs class
- copy vs reference semantics - does it make sense to have two copies of the same information? use classes
- speed - many instances of an object created, lean towards struct
- minimalist approach - if your data will never change or simple storage, use struct. if you need to update data then use classes in data storage.

- Struct usage examples: size of a geometric shape, a way to reference ranges in a series, a point to a 3d coordinate system

##Protocols

a way to define an interface or a template for an actual concrete type such as a struct or class or enumeration. with a protocol, you can define a common set of behaviors and then define the actual types that implement them

- protocols are defining a behavior, a struct or a class that define that behavior

protocol Car {
  var weight: Int {get set}
  func stop()
}

- you can define methods
- define properties (need to explicity state whether they can set or get)
- you can define associatedtype. When using associatedtype in a protocol, you are declaring that there is an associatedtype when deferring to the protocol adopter the exact type it is referring to
- one or more powerful features protocols apply

protocol WeightCalculable {
  associatedtype WeightType
  func calculateWeight() -> WeightType
}

class HeavyThing: WeightCalculable {
  typealias WeightType = Int
  func calculateWeight() -> Int {
    return 100
  }
}

protocol extensions
a protocol also can be extended as well
structs and classes that conform to a protocol do NOT need to use the extended protocol methods (like a prototype function)

##Protocol Oriented Programming

swift is a protocol-oriented programming language (POP)

- POP emphasizes coding to protocols, instead of to specific classes, structures, or Enumerations
- extending protocols is the key to an entirely new style of Programming
- similar to the way you extend a class, struct or enum, you use keyword extensions
- biggest difference is the definition of a protocol extensions
- type constraint: you're able to use methods and properties from another type inside the implementation of your extensions

protocol PlayoffEligible {
  var minimumWinsForPlayoffs: Int {get}
}

extension TeamRecord where Self: PlayoffEligible {
  func isPlayoffEligible() -> Bool {
    return self.wins > minimumWinsForPlayoffs
  }
}

POP benefits
- focusing on protocols instead of implementations, you can apply code contracts to any type - even those that do not support inheritance (structs)
- you don't need to worry about the specific type or even whether the thing is a class or struct
- allow a form of multiple inheritance
- protocol extensions greatly affect your ability to write expressive and decoupled

Swift is build primarily on a collection of structs and protocols: Classes: 6 Enum: 8 Structs: 103 Protocols: 86

Declare Identity protocol with id functions
Declare a ToDo class that conforms to Identity protocol...Define your own model scheme (variable it contains, etc)
Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects
Extend ObjectStore protocol to provide basic implementation for functions
Create Store singleton that will conform to ObjectStore protocol and implement requirements
