//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  Closures
 *  Global functions are closures that have a name and do not capture any values.
 *  Nested functions are closures that have a name and can capture values from their enclosing function.
 *  Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.
 *  optimization:
 *    Inferring parameter and return value types from context
 *    Implicit returns from single-expression closures
 *    Shorthand argument names
 *    Trailing closure syntax
 */

/**
 *  Closure Expressions
 *  Closure expressions are a way to write inline closures in a brief, focused syntax.
 */
//  The Sorted Method
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
  return s1 > s2
}
var reversedNames = names.sorted(by: backward)
//  Closure Expression Syntax
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 })
//  Inferring Type From Context
reversedNames = names.sorted(by: { (s1, s2) in return s1 > s2 })
//  Implicit Returns from Single-Expression Closures
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
//  Shorthand Argument Names
reversedNames = names.sorted(by: { $0 > $1 } )
//  Operator Methods
reversedNames = names.sorted(by: >)

/**
 *  Trailing Closures
 *  A trailing closure is written after the function call’s parentheses, 
 *  even though it is still an argument to the function.
 *  When you use the trailing closure syntax, you don’t write the argument label for the closure as part of the function call.
 */
func someFunctionThatTakesAClosure(closure: () -> Void) {
  // function body goes here
}
// Here's how you call this function without using a trailing closure:
someFunctionThatTakesAClosure(closure: {
  // closure's body goes here
})
// Here's how you call this function with a trailing closure instead:
someFunctionThatTakesAClosure() {
  // trailing closure's body goes here
}
reversedNames = names.sorted() { $0 > $1 }
//  only closure argument
reversedNames = names.sorted { $0 > $1 }

/**
 *  Capturing Values
 *  A closure can capture constants and variables from the surrounding context in which it is defined.
 *  The closure can then refer to and modify the values of those constants and variables from within its body, 
 *  even if the original scope that defined the constants and variables no longer exists.
 *  As an optimization, Swift may instead capture and store a copy of a value if that value is not mutated by a closure, 
 *  and if the value is not mutated after the closure is created.
 *  Swift also handles all memory management involved in disposing of variables when they are no longer needed.
 */

/**
 *  Closures Are Reference Types
 */

/**
 *  Escaping Closures
 *  A closure is said to escape a function when the closure is passed as an argument to the function, but is called after the function returns.
 */
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
  completionHandlers.append(completionHandler)
}
//  Marking a closure with @escaping means you have to refer to self explicitly within the closure.
func someFunctionWithNonescapingClosure(closure: () -> Void) {
  closure()
}
class SomeClass {
  var x = 10
  func doSomething() {
    someFunctionWithEscapingClosure { self.x = 100 }
    someFunctionWithNonescapingClosure { x = 200 }
  }
}
let instance = SomeClass()
instance.doSomething()
print(instance.x)
completionHandlers.first?()
print(instance.x)

/**
 *  Autoclosures
 *  An autoclosure is a closure that is automatically created to wrap an expression that’s being passed as an argument to a function.
 *  It doesn’t take any arguments, and when it’s called, it returns the value of the expression that’s wrapped inside of it.
 */
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
print("Now serving \(customerProvider())!")
print(customersInLine.count)
//  combine
var customerProviders: [() -> String] = []
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
  customerProviders.append(customerProvider)
}
collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures.")
for customerProvider in customerProviders {
  print("Now serving \(customerProvider())!")
}


