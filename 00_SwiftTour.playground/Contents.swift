//: Playground - noun: a place where people can play

import UIKit

print("hello world!")

/**
 *  Simple Values
 *  let: define constant
 *  var: define variable
 *  类型首字母大写
 *  必须显式类型转换
 *  []: define array and dictionary
 */
//  implicit
var myVariable = 42
myVariable = 50
let myConstant = 42
//  explicit
var myDouble: Double = 0.0
let myString: String = "Swift"
let myFloat: Float = 4.0
//  type convert
let label = "the width is"
let width = 94
let widthLabel = label + String(width)
let apples = 3
let appleSummary = "I have \(apples) apples."
//  array
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1]
shoppingList[1] = "carrot"
shoppingList = []
//  dictionary
var occupations = ["Malcolm": "Captain", "Kaylee": "Mechanic"]
occupations["Kaylee"]
occupations["Jayne"] = "Public Relations"
occupations = [:]

/**
 *  Control Flow
 *  条件判断带不带括号是可选的
 *  代码块需要用{}括住
 *  ?: define optional value
 *  !: infer not nil
 *  ??: define default value
 *  switch: 类型更加丰富，判断更加灵活，不必添加break
 *  ..<: infer range of index
 */
//  for - in
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
  if score > 50{
    teamScore += 3
  }else{
    teamScore += 1
  }
}
print(teamScore)
//  optional
var optionalString: String? = "hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
  greeting = "Hello, \(name)"
}
//  default
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
//  switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
  print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
  print("That would make a good tea sanwich.")
case let x where x.hasSuffix("pepper"):
  print("Is it a spicy \(x)?")
default:
  print("Everything tastes good in soup")
}
//  for - in
let interestingNumbers = [
  "Prime": [2, 3, 5, 7, 11, 13],
  "Fibonacci": [1, 1, 2, 3, 5, 8],
  "Square": [1, 4, 9, 16, 25]
]
var type = ""
var largest = 0
for (kind, numbers) in interestingNumbers {
  for number in numbers {
    if number > largest{
      largest = number
      type = kind
    }
  }
}
print(largest, type)
//  while
var n = 2
while n < 100 {
  n = n * 2
}
print(n)
//  repeat - while
var m = 2
repeat{
  m = m * 2
} while m < 100
print(m)
//  for - in
var total = 0
for i in 0..<4 {
  total += i
}
print(total)

/**
 *  Functions and Closures
 *  func: define function
 *  ->: infer return value
 *  _: infer use no argument label
 *  可以通过元组返回多个值
 *  可以传入多个参数
 *  可以嵌套定义函数，内部函数享有外部函数作用域
 *  函数本身就是一种类型，函数既可以作为参数，也可以作为返回值
 *  { in }: define closure，可以省略类型，返回类型，可以默认符号代替参数
 */
//  function
func greet(person: String, day: String) -> String{
  return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")
//  return multiple values
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
  var min = scores[0]
  var max = scores[0]
  var sum = 0
  
  for score in scores {
    if score > max{
      max = score
    }else if score < min{
      min = score
    }
    sum += score
  }
		
  return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100 ,3 ,9])
print(statistics.sum)
print(statistics.2)
//  multiple arguments
func sumOf(numbers:Int...) -> Int{
  var sum = 0
  for number in numbers{
    sum += number
  }
  return sum
}
sumOf()
sumOf(numbers: 42, 597, 12)
//  nested functions
func returnFifteen() -> Int{
  var y = 10
  func add(){
    y += 5
  }
  add()
  return y
}
returnFifteen()
//  function return value
func makeIncrementer() -> ((Int) -> (Int)){
  func addOne(number: Int) -> Int{
    return 1 + number
  }
  return addOne
}
var increment = makeIncrementer()
increment(7)
//  function argument
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool{
  for item in list{
    if condition(item) {
      return true
    }
  }
  return false
}
func lessThanTen(number: Int) -> Bool{
  return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)
//  closure
numbers.map({
  (number: Int) -> Int in
  let result = 3 * number
  return result
})
//  omit type and return value
let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)
//  refer to parameters by number
let sortedNumbers = numbers.sorted{$0 > $1}
print(sortedNumbers)

/**
 *  Objects and Classes
 *  init方法
 *  self引用类变量
 *  每一个property都必须被初始化
 *  override：重写父类方法，需要加标识
 *  set方法中，隐式变量newValue表示新值
 *  willSet方法，设置前调用
 *  didSet方法，设置后调用
 */
//  class
class Shape {
  var numberOfSides = 0
  var name: String
  
  init(name: String) {
    self.name = name
  }
  
  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides."
  }
}
var shape = Shape(name: "Rectangle")
shape.numberOfSides = 4
var shapeDescription = shape.simpleDescription()
//  subclass
class Square: Shape{
  var sideLength: Double
  
  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 4
  }
  
  func area() -> Double {
    return sideLength * sideLength
  }
  
  override func simpleDescription() -> String {
    return "A square with sides of length \(sideLength)."
  }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()
//  getter and setter
class EquilateralTriangle: Shape{
  var sideLength: Double = 0.0
  
  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 3
  }
  
  var perimeter: Double{
    get{
      return 3.0 * sideLength
    }
    set{
      sideLength = newValue / 3.0
    }
  }
  
  override func simpleDescription() -> String {
    return "A equilateral triangle with sides of length \(sideLength)."
  }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)
//  willSet and didSet
class TriangleAndSquare{
  var triangle: EquilateralTriangle{
    willSet{
      square.sideLength = newValue.sideLength
    }
  }
  
  var square: Square{
    willSet{
      triangle.sideLength = newValue.sideLength
    }
  }
  
  init(size: Double, name: String) {
    square = Square(sideLength: size, name: name)
    triangle = EquilateralTriangle(sideLength: size, name: name)
  }
}
var triangleAndSquare = TriangleAndSquare(size: 110, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

/**
 *  Enumerations and Structures
 *  enum可以有methods
 *  enum可以有associate values
 *  struct传值，class传址
 */
//  enum
enum Rank: Int{
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king
  func simpleDescription() -> String {
    switch self {
    case .ace:
      return "ace"
    case .jack:
      return "jack"
    case .queen:
      return "queen"
    case .king:
      return "king"
    default:
      return String(self.rawValue)
    }
  }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
//  rawValue
if let convertedRank = Rank(rawValue: 3) {
  let threeDescription = convertedRank.simpleDescription()
}
//  methods
enum Suit{
  case spades, hearts, diamonds, clubs
  func simpleDescription() -> String {
    switch self{
    case .spades:
      return "spades"
    case .hearts:
      return "hearts"
    case .diamonds:
      return "diamonds"
    case .clubs:
      return "clubs"
    }
  }
  func color() -> String {
    switch self{
    case .spades:
      return "black"
    case .hearts:
      return "white"
    case .diamonds:
      return "red"
    case .clubs:
      return "blue"
    }
  }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()
//  associated value
enum ServerResponse{
  case result(String, String)
  case failure(String)
}
let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
  print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
  print("Failure... \(message)")
}
//  struct
struct Card{
  var rank: Rank
  var suit: Suit
  func simpleDescription() -> String{
    return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
  }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

/**
 *  Protocols and Extensions
 *  protocol: define protocol
 *  实现协议
 */
//  protocol
protocol ExampleProtocol{
  var simpleDescription: String{ get }
  mutating func adjust()
}
//  ajusted
class SimpleClass: ExampleProtocol{
  var simpleDescription: String = "A very simple class."
  var anotherProperty: Int = 2324
  func adjust() {
    simpleDescription += " Now 100% adjusted."
  }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
struct SimpleStructure: ExampleProtocol{
  var simpleDescription: String = "A simple structure"
  mutating func adjust() {
    simpleDescription += " (adjusted)"
  }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
//  extension
extension Int: ExampleProtocol{
  var simpleDescription: String{
    return "The number \(self)"
  }
  mutating func adjust() {
    self += 42
  }
}
print(7.simpleDescription)
//  protocol type
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)

/**
 *  Error Handling
 *  throw error
 */
//  define error
enum PrinterError: Error{
  case outOfPaper
  case noToner
  case onFire
}
//  throw error
func send(job: Int, toPrinter printerName: String) throws -> String{
  if printerName == "Never has Toner" {
    throw PrinterError.noToner
  }
  return "Job sent"
}
//  handle error
do{
  let printerResponse = try send(job: 1040, toPrinter: "Never has Toner")
  print(printerResponse)
} catch PrinterError.onFire{
  print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
  print("Printer error: \(printerError).")
} catch{
  print(error)
}
//  optional
let printerSuccess = try? send(job: 1884, toPrinter: "Meger")
let printerFailure = try? send(job: 1885, toPrinter: "Never has Toner")
//  defer
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool{
  fridgeIsOpen = true
  defer {
    fridgeIsOpen = false
  }
  
  let result = fridgeContent.contains(food)
  return result
}
fridgeContains("banana")
print(fridgeIsOpen)

/**
 *  Generics
 */
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item]{
  var result = [Item]()
  for _ in 0..<numberOfTimes {
    result.append(item)
  }
  return result
}
makeArray(repeating: "knok", numberOfTimes: 4)
//  Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
  case none
  case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
//
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
  where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
    for lhsItem in lhs {
      for rhsItem in rhs {
        if lhsItem == rhsItem {
          return true
        }
      }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])

