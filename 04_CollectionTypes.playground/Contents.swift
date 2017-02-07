//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  Arrays
 *  An array stores values of the same type in an ordered list. 
 *  The same value can appear in an array multiple times at different positions.
 */
//  empty array
var someInts = [Int]()
print(someInts.count)
someInts.append(3)
someInts = []
//  default array
var threeDoubles = Array(repeatElement(0.0, count: 3))
//  combine array
var anotherThreeDoubles = Array(repeatElement(2.5, count: 3))
var sixDoubles = threeDoubles + anotherThreeDoubles
//  literal array
var shoppingList = ["Eggs", "Milk"]
//  count
print(shoppingList.count)
//  isEmpty
if shoppingList.isEmpty{
  print("is empty")
} else {
  print("is not empty")
}
//  append
shoppingList.append("Flour")
shoppingList += ["Baking Powder", "Cheese"]
//  index
shoppingList[0]
shoppingList[0...3] = ["Bananas", "Apples"]
//  insert
shoppingList.insert("Maple", at: 0)
//  remove
let mapleSyrup = shoppingList.remove(at: 0)
let apples = shoppingList.removeLast()
//  iterating array
for item in shoppingList {
  print(item)
}
//  index, value
for (index, value) in shoppingList.enumerated() {
  print("Item \(index + 1): \(value)")
}

/**
 *  Set
 *  A set stores distinct values of the same type in a collection with no defined ordering. 
 *  You can use a set instead of an array when the order of items is not important, 
 *  or when you need to ensure that an item only appears once.
 */
//  empty set
var letters = Set<Character>()
print(letters.count)
letters.insert("a")
//  literal array
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
//  count
print(favoriteGenres.count)
//  isEmpty
if favoriteGenres.isEmpty {
  print("is empty")
} else {
  print("is not empty")
}
//  insert
favoriteGenres.insert("Jazz")
//  remove
let removeGenre = favoriteGenres.remove("Rock")
//  contains
if favoriteGenres.contains("Funk") {
  print("have funk")
} else {
  print("no funk")
}
//  iterating set
for genre in favoriteGenres {
  print(genre)
}
//  sorted
for genre in favoriteGenres.sorted() {
  print(genre)
}

/**
 *  Set Operations
 *  a.intersection(b)
 *  a.symmetricDifference(b)
 *  a.union(b)
 *  a.subtracting(b)
 *  a.isSubset(of: b)
 *  a.isSuperset(of: b)
 *  a.isStrictSubset(of: b)
 *  a.isStrictSuperset(of: b)
 *  a.isDisjoint(with: b)
 */

/**
 *  Dictionaries
 *  A dictionary stores associations between keys of the same type 
 *  and values of the same type in a collection with no defined ordering.
 */
//  empty dictionary
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
//  literal dictionary
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//  count
print(airports.count)
//  isEmpty
if airports.isEmpty {
  print("is empty")
} else {
  print("is not empty")
}
//  optional
if let airportName = airports["DUB"] {
  print("The name of the airport is \(airportName).")
} else {
  print("That airport is not in the airports dictionary.")
}
//  remove
airports["YYZ"] = nil
if let removedValue = airports.removeValue(forKey: "DUB") {
  print("The removed airport's name is \(removedValue).")
} else {
  print("The airports dictionary does not contain a value for DUB.")
}
//  iterating dictionary
airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
for (airportCode, airportName) in airports {
  print("\(airportCode): \(airportName)")
}
//  keys
for airportCode in airports.keys {
print("Airport code: \(airportCode)")
}
//  values
for airportName in airports.values {
  print("Airport name: \(airportName)")
}
//  key array
let airportCodes = [String](airports.keys)
//  value array
let airportNames = [String](airports.values)





