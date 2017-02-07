//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  Terminology
 *  Unary operators: -a, b!
 *  Binary operators: 2 + 3
 *  Ternary operators: a ? b : c
 */

/**
 *  Assignment Operator
 *  = 无返回值，防止与 == 混淆
 */
let b = 10
var a = 5
a = b
let (x, y) = (1, 2)

/**
 *  Arithmetic Operators
 *  Addition (+)
 *  Subtraction (-)
 *  Multiplication (*)
 *  Division (/)
 *  Remainder (%)
 */
//  arithmetic
1 + 2
5 - 3
2 * 3
10.0 / 2.5
//  string concatenation
"hello" + "world"
//  remainder
//  a = (b * x) + remainder
9 % 4
9 % -4
-9 % 4

/**
 *  Compound Assignment Operators
 *  同样无返回值
 */
a = 1
a += 2
//  let b = a += 2

/**
 *  Comparison Operators
 *  Equal to (a == b)
 *  Not equal to (a != b)
 *  Greater than (a > b)
 *  Less than (a < b)
 *  Greater than or equal to (a >= b)
 *  Less than or equal to (a <= b)
 *  Test object references (a === b , a !=== b)
 */
//  compare int
1 > 2
3 <= 4
//  compare string
let name = "world"
if name == "world" {
  print("hello world")
} else {
  print("sorry")
}
//  compare tuple，从左到右，依次比较，默认小于7个元素
(1, "zebra") < (2, "apple")
(3, "apple") < (4, "bird")
(4, "dog") == (4, "dog")

/**
 *  Ternary Conditional Operator
 *  question ? answer1 : answer2
 */

/**
 *  Nil-Coalescing Operator
 *  a ?? b
 *  a != nil ? a! : b
 */
let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName

/**
 *  Range Operators
 *  (a...b)  [a, b]
 *  (a..<b)  [a, b)
 */
//  a...b
for index in 1...5 {
  print("\(index) times 5 is \(index * 5)")
}
//  a..<b
for index in 1..<5 {
  print("\(index) times 5 is \(index * 5)")
}

/**
 *  Logical Operators
 *  Logical NOT (!a)
 *  Logical AND (a && b)  is left-associative
 *  Logical OR  (a || b)  is left-associative
 */
//  !
let allowedEntry = false
if !allowedEntry {
  print("ACCESS DENIED")
}
//  &&
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
  print("Welcome!")
} else {
  print("ACCESS DENIED")
}
//  ||
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
  print("Welcome!")
} else {
  print("ACCESS DENIED")
}
//  combine
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
  print("Welcome!")
} else {
  print("ACCESS DENIED")
}




