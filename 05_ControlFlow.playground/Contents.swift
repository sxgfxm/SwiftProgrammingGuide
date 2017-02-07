//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  For-In loops
 */
for index in 1...5 {
  print("\(index) times 5 is \(index * 5)")
}
//  ignore index
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
  answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
//  iterate array
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
  print("Hello, \(name)!")
}
//  iterate dictionary
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
  print("\(animalName)s have \(legCount) legs")
}
//  index, value
for (index, value) in names.enumerated() {
  print("\(index): \(value)")
}

/**
 *  While Loops
 */
//  while
var index = 0
while index < 5 {
  print(index)
  index += 1
}
//  repeat-while
repeat{
  print(index)
  index -= 1
} while index > 0

/**
 *  Conditional Statements
 */
var temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
  print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
  print("It's really warm. Don't forget to wear sunscreen.")
} else {
  print("It's not that cold. Wear a t-shirt.")
}

/**
 *  Switch
 */
//  switch
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
  print("The letter A")
default:
  print("Not the letter A")
}
//  interval matching
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
  naturalCount = "no"
case 1..<5:
  naturalCount = "a few"
case 5..<12:
  naturalCount = "several"
case 12..<100:
  naturalCount = "dozens of"
case 100..<1000:
  naturalCount = "hundreds of"
default:
  naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
//  tuples
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
  print("(0, 0) is at the origin")
case (_, 0):
  print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
  print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
  print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
  print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}
//  value bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
  print("on the x-axis with an x value of \(x)")
case (0, let y):
  print("on the y-axis with a y value of \(y)")
case let (x, y):
  print("somewhere else at (\(x), \(y))")
}
//  where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
  print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
  print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
  print("(\(x), \(y)) is just some arbitrary point")
}
//  compound cases
let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
  print("On an axis, \(distance) from the origin")
default:
  print("Not on an axis")
}

/**
 *  Control Transfer Statements
 */
//  continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput.characters {
  if charactersToRemove.contains(character) {
    continue
  } else {
    puzzleOutput.append(character)
  }
}
print(puzzleOutput)
//  break
//  fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
  description += " a prime number, and also"
  fallthrough
default:
  description += " an integer."
}
print(description)
//  labeled statements
count: for index in 1...5 {
  print("\(index) times 5 is \(index * 5)")
}
//  guard
func greet(person: [String: String]) {
  guard let name = person["name"] else {
    return
  }
  
  print("Hello \(name)!")
  
  guard let location = person["location"] else {
    print("I hope the weather is nice near you.")
    return
  }
  
  print("I hope the weather is nice in \(location).")
}
greet(person: ["name": "John"])
greet(person: ["name": "Jane", "location": "Cupertino"])

/**
 *  Checking API Availability
 */
if #available(iOS 10, macOS 10.12, *) {
  // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
  // Fall back to earlier iOS and macOS APIs
}

