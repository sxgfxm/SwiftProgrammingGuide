//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 *  Constants and Variables
 */
//  declare constant
let maximumNumberOfLoginAttempts = 10
//  declare variable
var currentLoginAttempt = 0
//  type annotation
var welcomeMessage: String = "Hello"
//  string interpolation
print("\(welcomeMessage) World.")

/**
 *  Comments
 */
//  This is comments
/*  This is comments too */

/**
 *  Semicolons
 *  句尾的分号非必须
 */
let cat = "cat"; print(cat)

/**
 *  Integers
 *  Int
 *  32-bit platform, Int is the same size as Int32
 *  64-bit platform, Int is the same size as Int64
 *  UInt
 *  32-bit platform, UInt is the same size as UInt32
 *  64-bit platform, UInt is the same size as UInt64
 */
//  bounds
let minValue = UInt8.min
let maxValue = UInt8.max


/**
 *  Floating-Point Numbers
 *  Double represents a 64-bit floating-point number, at least 15 decimal digits
 *  Float represents a 32-bit floating-point number, as little as 6 decimal digits
 */

/**
 *  Type Safety and Type Inference
 *  类型安全
 *  类型推断
 */
let meaningOfLife = 42
//  pi is Double
let pi = 3.14159
let anotherPi = 3 + 0.14159

/**
 *  Numeric Literals
 *  A decimal number, with no prefix
 *  A binary number, with a 0b prefix
 *  An octal number, with a 0o prefix
 *  A hexademical number, with a 0x prefix
 */
//  Int
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11
//  Double
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
//  extra zeros and underscores
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

/**
 *  Numeric Type Conversion
 */
//  integer conversion
let twoThousand: UInt16 = 2000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
//  integer and float-point conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let PI = Double(three) + pointOneFourOneFiveNine
//  截取
let integerPi = Int(PI)

/**
 *  Type Aliases
 *  别名
 */
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

/**
 *  Booleans
 *  条件判断必须是Bool类型
 */
let orangesAreOrange = true
let turnipsAreDelicious = false

/**
 *  Tuples
 *  元组，无类型限制
 *  函数通过tuple返回多个值
 */
//  group
let http404Error = (404, "Not Found")
//  split
let (statusCode, statusMessage) = http404Error
let (justTheStatusCode, _) = http404Error
//  access tuple items
print(http404Error.0)
print(http404Error.1)
//  rename 
let http200Status = (statusCode: 200, description: "OK")
print(http200Status.statusCode)
print(http200Status.description)

/**
 *  Optionals
 *  当不确定是否有值时，使用optional
 *  提示处理可以存在无值的情况
 *  nil表示无值，不同于OC的nil
 */
let possibleNumber = "123"
if let convertedNumber = Int(possibleNumber) {
  print(convertedNumber + 2)
}
//  nil
var serverResponseCode: Int? = 404
serverResponseCode = nil
var surveyAnswer: String?
//  forced unwrapping
if surveyAnswer != nil {
  print(surveyAnswer!)
}
//  optional binding
if let actualNumber = Int(possibleNumber) {
  print("has integer value of \(actualNumber)")
}else{
  print("has no integer value")
}
//  multiple binding
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
  print("\(firstNumber) < \(secondNumber) < 100")
}
//  implicity unwrapped optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString!
let assumedString: String! = "An implicity unwrapped optional string."
let implicitString: String = assumedString

/**
 *  Error Handling
 */
//  throw
func makeASandwish() throws{
  //  ...
}
//  try...catch
do {
  try makeASandwish()
  print("success")
} catch {
  print("error")
}

/**
 *  Assertions
 *  断言
 */
let age = 3
assert(age >= 0 ,"A person's age cannot be less than zero")



