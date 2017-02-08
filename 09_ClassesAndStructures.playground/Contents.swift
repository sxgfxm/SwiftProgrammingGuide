//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  Classes and Structures
 *  In Swift, you define a class or a structure in a single file, 
 *  and the external interface to that class or structure is automatically made available for other code to use.
 */

/**
 *  Comparing Classes and Structures
 *  common:
 *    Define properties to store values
 *    Define methods to provide functionality
 *    Define subscripts to provide access to their values using subscript syntax
 *    Define initializers to set up their initial state
 *    Be extended to expand their functionality beyond a default implementation
 *    Conform to protocols to provide standard functionality of a certain kind
 *  class:
 *    Inheritance enables one class to inherit the characteristics of another.
 *    Type casting enables you to check and interpret the type of a class instance at runtime.
 *    Deinitializers enable an instance of a class to free up any resources it has assigned.
 *    Reference counting allows more than one reference to a class instance.
 */
//  Definition Syntax
struct Resolution {
  // structure definition goes here
  var width = 0
  var height = 0
}
class VideoMode {
  // class definition goes here
  var resolution = Resolution()
  var interlaced = false
  var frameRate = 0.0
  var name: String?
}
//  Class and Structure Instances
let someResolution = Resolution()
let someVideoMode = VideoMode()
//  Accessing Properties
//  You can access the properties of an instance using dot syntax
print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")
someVideoMode.resolution.width = 1280
//  Memberwise Initializers for Structure Types
let vge = Resolution(width: 640, height: 480)

/**
 *  Structures and Enumerations Are Value Types
 *  A value type is a type whose value is copied when it is assigned to a variable or constant, or when it is passed to a function.
 */

/**
 *  Classes Are Reference Types
 *  Rather than a copy, a reference to the same existing instance is used instead.
 *
 *  Identity Operators
 *  Identical to (===)
 *  Not identical to (!==)
 *  "Identical to" means that two constants or variables of class type refer to exactly the same class instance.
 *  "Equal to" means that two instances are considered "equal" or "equivalent" in value,
 *  for some appropriate meaning of “equal”, as defined by the type’s designer.
 *  
 *  Pointers
 */

/**
 *  Choosing Between Classes and Structures
 */

/**
 *  Assignment and Copy Behavior for Strings, Arrays, and Dictionaries
 *  In Swift, many basic data types such as String, Array, and Dictionary are implemented as structures.
 */






