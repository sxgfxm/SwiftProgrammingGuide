//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  Enumerations
 *  An enumeration defines a common type for a group of related values 
 *  and enables you to work with those values in a type-safe way within your code.
 */

/**
 *  Enumeration Syntax
 */
enum CompassPoint: String{
  // enumeration definition goes here
  case north
  case south
  case east
  case west
}
//  Multiple cases
enum Planet {
  case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
//  use
var directionToHead = CompassPoint.west
directionToHead = .east

/**
 *  Matching Enumeration Values with a Switch Statement
 */
//  list all
directionToHead = .south
switch directionToHead {
case .north:
  print("Lots of planets have a north")
case .south:
  print("Watch out for penguins")
case .east:
  print("Where the sun rises")
case .west:
  print("Where the skies are blue")
}
//  list some
let somePlanet = Planet.earth
switch somePlanet {
case .earth:
  print("Mostly harmless")
default:
  print("Not a safe place for humans")
}

/**
 *  Associated Values
 */
enum Barcode {
  case upc(Int, Int, Int, Int)
  case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
//  switch
switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
  print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
  print("QR code: \(productCode).")
}
//  switch
switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
  print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
  print("QR code: \(productCode).")
}

/**
 *  Raw Values
 */
enum ASCIIControlCharacter: Character {
  case tab = "\t"
  case lineFeed = "\n"
  case carriageReturn = "\r"
}
//  Implicitly Assigned Raw Values
enum Planet2: Int {
  case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let earthsOrder = Planet2.earth.rawValue
let sunsetDirection = CompassPoint.west.rawValue
//  Initializing from a Raw Value
let possiblePlanet = Planet2(rawValue: 7)
let positionToFind = 11
if let somePlanet = Planet2(rawValue: positionToFind) {
  switch somePlanet {
  case .earth:
    print("Mostly harmless")
  default:
    print("Not a safe place for humans")
  }
} else {
  print("There isn't a planet at position \(positionToFind)")
}

/**
 *  Raw values are not the same as associated values.
 *  Raw values are set to prepopulated values when you first define the enumeration in your code, 
 *  like the three ASCII codes above. 
 *  The raw value for a particular enumeration case is always the same.
 *  Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, 
 *  and can be different each time you do so.
 */

/**
 *  Recursive Enumerations
 *  A recursive enumeration is an enumeration that has another instance of the enumeration 
 *  as the associated value for one or more of the enumeration cases.
 */
//  define
enum ArithmeticExpression {
  case number(Int)
  indirect case addition(ArithmeticExpression, ArithmeticExpression)
  indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
//  assign
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
//  compute
func evaluate(_ expression: ArithmeticExpression) -> Int {
  switch expression {
  case let .number(value):
    return value
  case let .addition(left, right):
    return evaluate(left) + evaluate(right)
  case let .multiplication(left, right):
    return evaluate(left) * evaluate(right)
  }
}
print(evaluate(product))
