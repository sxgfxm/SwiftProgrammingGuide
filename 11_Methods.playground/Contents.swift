//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  Methods
 *  Methods are functions that are associated with a particular type. 
 *  Classes, structures, and enumerations can all define instance methods, 
 *  which encapsulate specific tasks and functionality for working with an instance of a given type.
 *  Classes, structures, and enumerations can also define type methods, 
 *  which are associated with the type itself.
 */

/**
 *  Instance Methods
 *  Instance methods are functions that belong to instances of a particular class, structure, or enumeration.
 */
class Counter {
  var count = 0
  func increment() {
    count += 1
  }
  func increment(by amount: Int) {
    count += amount
  }
  func reset() {
    count = 0
  }
}
let counter = Counter()
counter.increment()
counter.increment(by: 5)
counter.reset()
//  The self Property
struct Point {
  var x = 0.0, y = 0.0
  func isToTheRightOf(x: Double) -> Bool {
    return self.x > x
  }
}
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0) {
  print("This point is to the right of the line where x == 1.0")
}
//  Modifying Value Types from Within Instance Methods
struct Point2 {
  var x = 0.0, y = 0.0
  mutating func moveBy(x deltaX: Double, y deltaY: Double) {
    x += deltaX
    y += deltaY
  }
}
var somePoint2 = Point2(x: 1.0, y: 1.0)
somePoint2.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint2.x), \(somePoint2.y))")
//  Assigning to self Within a Mutating Method
struct Point3 {
  var x = 0.0, y = 0.0
  mutating func moveBy(x deltaX: Double, y deltaY: Double) {
    self = Point3(x: x + deltaX, y: y + deltaY)
  }
}

/**
 *  Type Methods
 *  You can also define methods that are called on the type itself. 
 *  These kinds of methods are called type methods.
 */
//  level
struct LevelTracker {
  static var highestUnlockedLevel = 1
  var currentLevel = 1
  
  static func unlock(_ level: Int) {
    if level > highestUnlockedLevel { highestUnlockedLevel = level }
  }
  
  static func isUnlocked(_ level: Int) -> Bool {
    return level <= highestUnlockedLevel
  }
  
  @discardableResult
  mutating func advance(to level: Int) -> Bool {
    if LevelTracker.isUnlocked(level) {
      currentLevel = level
      return true
    } else {
      return false
    }
  }
}
//  player
class Player {
  var tracker = LevelTracker()
  let playerName: String
  func complete(level: Int) {
    LevelTracker.unlock(level + 1)
    tracker.advance(to: level + 1)
  }
  init(name: String) {
    playerName = name
  }
}
//  play
var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
player = Player(name: "Beto")
if player.tracker.advance(to: 6) {
  print("player is now on level 6")
} else {
  print("level 6 has not yet been unlocked")
}