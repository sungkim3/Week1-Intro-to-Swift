//: Playground - noun: a place where people can play

import UIKit
//Creating a struct and setting an initializer
struct Person {
    var name: String
    var age: Int?
    
    init(name: String, age: Int? = nil) {
        self.name = name
        self.age = age
    }
    
    //Initializers can be optional as well
    //init?(name: AnyObject, age: Int? = nil) {
    //    if let name = name as? String{
    //        self.name = name
    //    } else {
    //        return nil
    //    }
    //
    //    self.age = age
    //}
    
    //instance method
    func ageInDogYears() -> Int {
        let age = self.age ?? 0
        return age * 7
    }
}

//Extension of Person
extension Person {
    func sayHello() {
        print("Hi, \(self.name)")
    }
}

let me = Person(name: "Adam")
let otherPerson = Person(name: "Someone Else", age: 40)
let myPerson = Person(name: "Adam", age: 30)
myPerson.ageInDogYears()
myPerson.sayHello()


//Classes are structurally the same as Struct, but it is pass by reference type
class PersonTwo {
    var name: String
    var age: Int?
    
    init(name: String, age: Int? = nil) {
        self.name = name
        self.age = age
    }
    func ageInDogYears() -> Int {
        let age = self.age ?? 0
        return age * 7
    }
}

let myPersonTwo = PersonTwo(name: "Adam", age: 30)
let otherPersonTwo = myPersonTwo

otherPersonTwo.age = 0

otherPersonTwo.age
myPersonTwo.age

