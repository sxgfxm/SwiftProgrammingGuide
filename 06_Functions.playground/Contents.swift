//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  Defining and Calling Functions
 *  Functions are self-contained chunks of code that perform a specific task
 */
//  define
func greet(person: String) -> String {
  let greeting = "Hello, " + person + "!"
  return greeting
}
//  call
print(greet(person: "Anna"))
print(greet(person: "Brian"))
//  again
func greetAgain(person: String) -> String {
  return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))
/**
 *  Function Parameters and Return Values
 *  Function parameters and return values are extremely flexible in Swift
 */
//  Functions Without Parameters
func sayHelloWorld() -> String {
  return "hello, world"
}
print(sayHelloWorld())
//  Functions With Multiple Parameters
func greet1(person: String, alreadyGreeted: Bool) -> String {
  if alreadyGreeted {
    return greetAgain(person: person)
  } else {
    return greet(person: person)
  }
}
print(greet1(person: "Tim", alreadyGreeted: true))
//  Functions Without Return Values
func greet2(person: String){
  print("Hello, \(person)!")
}
greet2(person: "Dave")
//  Functions with Multiple Return Values
func minMax(array: [Int]) -> (min: Int, max: Int) {
  var currentMin = array[0]
  var currentMax = array[0]
  for value in array[1..<array.count] {
    if value < currentMin {
      currentMin = value
    } else if value > currentMax {
      currentMax = value
    }
  }
  return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
//  Optional Tuple Return Types

/**
 *  Function Argument Labels and Parameter Names
 *  By default,parameters use their parameter name as their argument label.
 */
//  Default
func someFunction(firstParameterName: Int, secondParameterName: Int) {
  // In the function body, firstParameterName and secondParameterName
  // refer to the argument values for the first and second parameters.
}
someFunction(firstParameterName: 1, secondParameterName: 2)
//  Specifying Argument Labels
func greet(person: String, from hometown: String) -> String {
  return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
//  Omitting Argument Labels
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
  // In the function body, firstParameterName and secondParameterName
  // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)
//  Default Parameter Values
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
  // If you omit the second argument when calling this function, then
  // the value of parameterWithDefault is 12 inside the function body.
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12
//  Variadic Parameters
func arithmeticMean(_ numbers: Double...) -> Double {
  var total: Double = 0
  for number in numbers {
    total += number
  }
  return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)
//  In-Out Parameters，传址
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
  let temporaryA = a
  a = b
  b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

/**
 *  Function Types
 *  Every function has a specific function type, made up of the parameter types and the return type of the function.
 */
//  (Int, Int) -> Int
func addTwoInts(_ a: Int, _ b: Int) -> Int {
  return a + b
}
//  Using Function Types
var mathFunction: (Int, Int) -> Int = addTwoInts
print(mathFunction(10, 20))
//  Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
  print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
//  Function Types as Return Types
func stepForward(_ input: Int) -> Int {
  return input + 1
}
func stepBackward(_ input: Int) -> Int {
  return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
  return backward ? stepBackward : stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
currentValue = moveNearerToZero(currentValue)
//  Nested Functions
func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
  func stepForward(input: Int) -> Int { return input + 1 }
  func stepBackward(input: Int) -> Int { return input - 1 }
  return backward ? stepBackward : stepForward
}
var currentValue2 = -4
let moveNearerToZero2 = chooseStepFunction2(backward: currentValue2 > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue2 != 0 {
  print("\(currentValue2)... ")
  currentValue2 = moveNearerToZero2(currentValue2)
}
print("zero!")





