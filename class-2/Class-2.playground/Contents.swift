//: Playground - noun: a place where people can play

import UIKit

//Array method examples

//Searching arrays
var arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

let empty = arr.isEmpty
let count = arr.count

let maxElement = arr.maxElement()
let minElement = arr.minElement()

let contains = arr.contains(3)

//Manipulating arrays

arr.append(10)
arr.insert(3, atIndex: 0)
arr[0] = 0

let last = arr.last

//Higher order function on arrays
var array = ["Mercury", "Venus", "Earth"]

let planets = array.reduce("") {(result, planet) -> String in
    return result + ", " + planet
}

let containsEarth = array.filter {(planet) -> Bool in
    return planet == "Earth"
}

var arrayNumbers = ["12", "2", "4"]

let numbers = arr.map { (number) -> Int? in
    Int(number)
}

//Iteration
//for (index, element) in array.enumerate {
//
//}

//Iteration of a dictionary

var dictionary = ["one" : 1, "two" : 2]

for (key, _) in dictionary {
    print(key)
}
for (_, value) in dictionary {
    print(value)
}
for (key, value) in dictionary {
    print("Key \(key), Value \(value)")
}

//Higher order function on dictionaries

var planet = ["one" : "Mercury", "two" : "Venus", "three" : "Earth"]

let allPlanets = planet.reduce("") { (result, planet: (key: String, value: String)) -> String in
    return result + " " + planet.value
}

planet.filter { (key: String, value: String) -> Bool in
    return value == "Earth"
}

//Hash values

let string = "Saturn"
let hash = string.hashValue

let string2 = "Saturn"
let hash2 = string2.hashValue

//Dictionaries methods

planet["four"] = "Mars"
planet

planet.removeValueForKey("one")
planet


//removing duplicates with Sets
var arrayOfInts: Set = [0, 0, 1, 2, 2, 4, 4, 7]

//More Sets

let aSet: Set = [0, 1, 6, 7, 8, 9]
let bSet: Set = [0, 1, 2, 3, 4, 5]

let union = aSet.union(bSet)
let intersect = aSet.intersect(bSet)
let subtract = aSet.subtract(bSet)
let exclusiveOr = aSet.exclusiveOr(bSet)

let word = "sun"
let wordTwo = "earth"
let wordHashValue = word.hashValue
let wordTwoHashValue = wordTwo.hashValue
let remainder = abs(wordHashValue%100)
let remainderTwo = abs(wordTwoHashValue%100)

