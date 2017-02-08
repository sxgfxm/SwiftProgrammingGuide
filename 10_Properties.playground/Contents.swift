//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  Properties
 *  Properties associate values with a particular class, structure, or enumeration.
 */

/**
 *  Stored Properties
 *  In its simplest form, a stored property is a constant or variable that is stored as part of an instance of a particular class or structure.
 */
struct FixedLengthRange {
  var firstValue: Int
  let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6
//  Stored Properties of Constant Structure Instances
//  let value type, cannot change
//  let reference type, can change
//  Lazy Stored Properties
class DataImporter {
  /*
   DataImporter is a class to import data from an external file.
   The class is assumed to take a non-trivial amount of time to initialize.
   */
  var fileName = "data.txt"
  //  the DataImporter class would provide data importing functionality here
}
class DataManager {
  lazy var importer = DataImporter()
  var data = [String]()
  //  the DataManager class would provide data management functionality here
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
print(manager.importer.fileName)
//  the DataImporter instance for the importer property has now been created
//  Stored Properties and Instance Variables

/**
 *  Computed Properties
 *  They do not actually store a value. 
 *  Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.
 */
struct Point {
  var x = 0.0, y = 0.0
}
struct Size {
  var width = 0.0, height = 0.0
}
struct Rect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      let centerX = origin.x + (size.width / 2)
      let centerY = origin.y + (size.height / 2)
      return Point(x: centerX, y: centerY)
    }
    set(newCenter) {
      origin.x = newCenter.x - (size.width / 2)
      origin.y = newCenter.y - (size.height / 2)
    }
  }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
//  Shorthand Setter Declaration, newValue
struct AlternativeRect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      let centerX = origin.x + (size.width / 2)
      let centerY = origin.y + (size.height / 2)
      return Point(x: centerX, y: centerY)
    }
    set {
      origin.x = newValue.x - (size.width / 2)
      origin.y = newValue.y - (size.height / 2)
    }
  }
}
//  Read-Only Computed Properties
struct Cuboid {
  var width = 0.0, height = 0.0, depth = 0.0
  var volume: Double {
    return width * height * depth
  }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")

/**
 *  Property Observers
 *  Property observers observe and respond to changes in a property’s value. 
 *  Property observers are called every time a property’s value is set, 
 *  even if the new value is the same as the property’s current value.
 *
 *  willSet is called just before the value is stored. newValue
 *  didSet is called immediately after the new value is stored. oldValue
 */
class StepCounter {
  var totalSteps: Int = 0 {
    willSet(newTotalSteps) {
      print("About to set totalSteps to \(newTotalSteps)")
    }
    didSet {
      if totalSteps > oldValue  {
        print("Added \(totalSteps - oldValue) steps")
      }
    }
  }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896

/**
 *  Global and Local Variables
 *  Global variables are variables that are defined outside of any function, method, closure, or type context. 
 *  Local variables are variables that are defined within a function, method, or closure context.
 *  Global constants and variables are always computed lazily.
 *  Local constants and variables are never computed lazily.
 */

/**
 *  Type Properties
 *  There will only ever be one copy of type properties, no matter how many instances of that type you create.
 *  static: define
 *  class: allow override
 */
//  Type Property Syntax
struct SomeStructure {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 1
  }
}
enum SomeEnumeration {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 6
  }
}
class SomeClass {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 27
  }
  class var overrideableComputedTypeProperty: Int {
    return 107
  }
}
//  Querying and Setting Type Properties
print(SomeStructure.storedTypeProperty)
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
print(SomeEnumeration.computedTypeProperty)
print(SomeClass.computedTypeProperty)


