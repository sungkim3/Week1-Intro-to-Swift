//: Playground - noun: a place where people can play

import UIKit

//Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

let planetsWithEarth = ["Mercury", "Venus", "Earth", "Mars"]
let planetsWithoutEarth = ["Mercury", "Venus", "Mars"]

func checkForEarth (planets: [String]) -> [String] {
    if (planets.contains("Earth")) {
        return planets
    } else {
        var planetsNowWithEarth = planets
        planetsNowWithEarth.append("Earth")
        return planetsNowWithEarth
    }
}

checkForEarth(planetsWithEarth)
checkForEarth(planetsWithoutEarth)

//Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”

let venusEarthArray = ["Venus", "Earth"]
let morePlanetsArray = ["Mercury", "Venus", "Earth", "Mars"]

func stringedPlanetsArray (list: [String]) -> String {
    var listOfPlanets = list.reduce("") {(result, planet) -> String in
        return (result + ", " + planet)
    }
    listOfPlanets.removeRange(listOfPlanets.startIndex...listOfPlanets.startIndex.successor())
    return listOfPlanets
}

stringedPlanetsArray(venusEarthArray)
stringedPlanetsArray(morePlanetsArray)

//Declare and implement a dictionary that can contain as values Strings, Ints, etc

var dictionary = [String : AnyObject]()

dictionary["one"] = false
dictionary["two"] = "two"
dictionary["three"] = [1, 2]
dictionary

//Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter

var dictionaryTwo = ["one" : "Mercury", "two" : "Venus", "three" : "Earth", "four" : "Mars"]

func searchDict (string: String, dictionary: [String : String]) -> [(String, String)] {
    let filteredDictionary = dictionary.filter {(_: String, value: String) -> Bool in
        return value == string
    }
    return filteredDictionary
}

searchDict("Earth", dictionary: dictionaryTwo)
searchDict("Jupiter", dictionary: dictionaryTwo)

//Write examples for union, intersect, subtract, exclusive Or set operations

let setOne: Set = [0, 1, 2, 3, 8, 9, 10]
let setTwo: Set = [0, 1, 2, 3, 4, 5, 6]

let union = setOne.union(setTwo)
let intersect = setOne.intersect(setTwo)
let subtract = setOne.subtract(setTwo)
let exclusiveOr = setOne.exclusiveOr(setTwo)

//Write a function that counts repeating words and prints out the count of each

let arr = ["one", "one", "two", "two", "three", "three", "three", "four", "one"]

func countRepeats (arr: [String]) {
    var dictionary = [String: Int]()
    for index in 0..<arr.count {
        if (dictionary.indexForKey(arr[index]) == nil) {
            dictionary[arr[index]] = 1
        } else {
            dictionary[arr[index]]? += 1
        }
    }
    print(dictionary)
}

countRepeats(arr)

//Add two numbers without using "+"

let firstNum = 7
var secondNum = 8

func addTwoNumbers (numOne: Int, numTwo: Int) -> Int {
    var incrementer = 0
    if (numOne < numTwo) {
        incrementer = numTwo
        for _ in 1...numOne {
            incrementer += 1
        }
        return incrementer
    } else {
        incrementer = numOne
        for _ in 1...numTwo {
            incrementer += 1
        }
        return incrementer
    }
}

addTwoNumbers(firstNum, numTwo: secondNum)
addTwoNumbers(8, numTwo: 2)
