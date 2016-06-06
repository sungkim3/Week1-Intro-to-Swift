//: Playground - noun: a place where people can play

import UIKit

//Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number

func checkStringAsNumber(type: String) -> Int? {
    return Int(type)
}

checkStringAsNumber("forty")
checkStringAsNumber("40")
//Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func stringInterpolation(tuple: (code: Int, message: String)) -> String {
    return "\(tuple.message) course \(tuple.code) at Code Fellows"
}

stringInterpolation((code: 401, message: "I am taking"))
stringInterpolation((code: 401, message: "I am passing"))

//Write a function that take in a string, and returns a message: “String contains n characters”

func countChar(word: String) -> String {
    let collection = Array(word.characters)
    return "\(word) contains \(collection.count) characters."
}

countChar("hello")
countChar("include spaces")

//Write a function that takes in a string and reverses it. Use a simple for loop

func reverseString(type: String) -> String {
    let letterCollection = Array(type.characters)
    var reverseCollection = [String]()
    for index in (letterCollection.count - 1).stride(to: -1, by: -1){
        reverseCollection.append(String(letterCollection[index]))
    }
    return reverseCollection.joinWithSeparator("")
}

reverseString("hello")
reverseString("wonderful")
reverseString("spaces work")

//Declare a variable that’s function. Implement function to take in a string (name) and return greeting message.

func greetingFunction (name: String) -> String {
    return "Greetings \(name), enjoy your day!"
}
var greeting = greetingFunction

greeting("Sung")
greeting("Michael")