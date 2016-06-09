////: Playground - noun: a place where people can play
//
//import UIKit
//
//let name = "Michael"
//
//var planet = "Mars"
//planet = "Earth"
//
//let number: Int = 10
//// Type conversion
//let string: String = "\(number)"
//let float: Float = Float(number)
//
//Tuple
//let tuple: (description: String, code: Int) = (description: "Not found.", code: 401)
////a tuple is a specific data type that consists of two constants, a description of type string and a code of type int
//let description = tuple.description
//
////You don't always have to specify type, Swift can infer the typing, Objective C requires you to be specific in your typing
//let numberTwo = 20.0

////Strings
//class Person {
//    
//    let firstName: String
//    let lastName: String
//    
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//}
//
//let michael = Person(firstName: "Michael", lastName: "Westen")
//
////Decisions
////if else  statements
//let planetTwo = "Earth"
//if planetTwo == "Mars" {
//    print("Equal...")
//} else {
//    print("Not equal...")
//}
////ternary statements, the ? is the ternary operator. This behaves exactly as the if/else statement above
//let equal = planetTwo == "Earth" ? print("Equal..") : print("Not Equal..")
//
////ranges
//let age = 3
//
//switch age {
//case 0...3:
//    print("Toddler..")
//case 4...12:
//    print("Danger..")
//default: print("Adult..")
//}
//
//loops

let numbers = [0, 1, 2, 3, 4, 5]
for number in 0.stride(to: numbers.count, by: 1) {
    print(numbers[number])
}
for number in numbers {
    print(number)
}
for (index, number) in numbers.enumerate() {
    print("Number: \(number) at index: \(index)")
}
////function currying, higher order functions example
//
//class Some {
//    func doSomething(task: String) -> (String) -> String {
//        return {(time: String) -> String in
//            return "\(task) at \(time)"
//        }
//        
//    }
//}
//
//let some = Some()
//let doSomething = Some.doSomething(some)
//doSomething("Get milk")("10 AM")
//doSomething("Get teeth cleaned up")("11 AM")
//
////Closures example
//
//func print(text: String, completion: (text: String) -> ()) {
//    NSOperationQueue().addOperationWithBlock {
//        usleep(5000)
//        
//        NSOperationQueue.mainQueue().addOperationWithBlock({
//            completion(text: "Hello, \(text)")
//        })
//    }
//}
//
//print("Michael") { (text) in
//    print(text)
//}
//
////Optionals example
//
//class Person {
//    let firstName: String
//    let lastName: String?
//    
//    init(firstName: String, lastName: String? = nil) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//}
//
//let person = Person(firstName: "Michael")
//person.firstName
//
//func myPrint(text: String? = nil) {
//    guard let text = text else { return }
//    print(text)
//}
//
//myPrint("mars")
//
////
////func number(string: String) -> Int? {
////    return Int(string)
////}
////
////number("mars")
//
////Nil Coalescing example
//var optional: Int?
//var result: Int = optional ?? 5
