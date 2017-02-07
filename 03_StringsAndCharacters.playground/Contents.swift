//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  String Literals
 */
let someString = "Some string literal value"

/**
 *  Initializing an Empty String
 */
var emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty {
  print("Nothing to see here")
}

/**
 *  String Mutability
 */
var variableString = "Horse"
variableString += " and carriage"

/**
 *  Strings Are Value Types
 *  copy value
 */

/**
 *  Working with Characters
 */
for character in "Hello".characters {
  print(character)
}
let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)

/**
 *  Concatenating Strings and Characters
 */
//  string
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
//  character
welcome.append(exclamationMark)

/**
 *  String Interpolation
 */
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

/**
 *  Unicode
 */

/**
 *  Counting Characters
 *  string concatenation and modification may not always affect a string’s character count
 */
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")

/**
 *  Accessing and Modifying a String
 */
//  string indices，必须使用String.Index类型
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.index(before: greeting.endIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
for index in greeting.characters.indices{
  print("\(greeting[index]) ",terminator:"")
}
//  insert
welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " there".characters, at: welcome.index(before: welcome.endIndex))
//  remove
welcome.remove(at: welcome.index(before: welcome.endIndex))
let range = welcome.index(welcome.endIndex, offsetBy:-6)..<welcome.endIndex
welcome.removeSubrange(range)

/**
 *  Comparing Strings
 */
//  String and Character Equality
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
  print("These two strings are considered equal")
}
//  Prefix and Suffix Equality
quotation.hasPrefix("We")
quotation.hasSuffix("Me")


