//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let a = 3
let b = 7
var c = a + b
c += 3

let foo: Bool = true

if (foo) {
    print("the answer is \(a)")
} else {
    print("the answer is \(b)")
}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

sum(17, b: 3)

let individualScores = [45, 36, 17, 3, 99]
var teamScore = 0

for score in individualScores {
    if (score > 50) {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString : String? = "Peter"
print(optionalString == nil)

var greeting = "Hello"
if let name = optionalString {
    greeting += " \(name)"
}

let nickName : String? = nil
let fullName : String = "John Doe"

let informalGreeting = "Hi, \(nickName ?? fullName)"

let vegetable = "red pepper"

switch vegetable {
    case "celery":
        print("aaa")
    case "cucumber", "watercress":
        print("bbb")
    case let x where x.hasSuffix("pepper"):
        print("ddd \(x)")
    default:
        print("ddd")
}


let stuff = [
    "a": [1, 2, 3],
    "b": [2, 3, 4],
    "c": [3, 4, 5]
]

for (key, value) in stuff {
    for num in value {
        print("\(key): \(num)")
    }
}


for i in 0..<4 {
    print(i)
}


func greet(name: String, day: String?) -> String {
    let actualDay = day ?? "awesome"
    return "Hello \(name), today is \(actualDay)!"
}

greet("Peter", day: nil)


let num1 = 1
if -num1 < 0 {
    print("boom")
}

func mightThrowError() throws {
    
}

try mightThrowError()


func fun1(foo: String, bar: String) -> String {
    return foo + bar
}
print(fun1("a", bar: "b"))

func fun2(a foo: String, a bar: String) {
    
}
fun2(a: "a", a: "b")

func fun3(a: Int, _ b: Int) {
    
}
fun3(1, 2)

func fun4(a: Int, b: Int = 2, c: Int = 3) -> Int {
    return a + b + c
}

fun4(1)
fun4(1, c: 4)
fun4(1, b: 5, c: 7)

func fun5(var first result: Int, rest: Int...) -> Int {
    for num in rest {
        result += num
    }
    return result
}
fun5(first: 23, rest: 1, 3, 5, 7, 9)

func fun6(possibleNumber: Int?) -> Int {
    guard let num = possibleNumber else {
        return -1
    }
    return num + 1
}
fun6(3)

func fun7() {
    for _ in 1...5 {
        print("HODOR")
    }
}
fun7()


func fun8(var name: String) {
    name += "-HODOR"
    print("inside func: \(name)")
}

let name = "HODOR"
fun8(name)
print("outside func: \(name)")


func swapInts(inout a: Int, inout _ b: Int) {
    let temp = a
    a = b
    b = temp
}

var aa = 3
var bb = 107

swapInts(&aa, &bb)
print("aa=\(aa); bb=\(bb)")     // aa=107; bb=3


func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts
print(mathFunction(3, 4))

mathFunction = multiplyTwoInts
print(mathFunction(3, 4))

func printMathResult(fn: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(fn(a, b))")
}
printMathResult(addTwoInts, 5, 7)


func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFn(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

chooseStepFn(false)(3)  // 4



let things = ["b1", "c1", "a4", "a2", "b3"]

func backwards(s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

things.sort(backwards)
things.sort({(s1: String, s2: String) -> Bool in return s1 > s2})
things.sort({s1, s2 in s1 > s2})
things.sort({$0 > $1})
things.sort() {$0 > $1}
things.sort {$0 > $1}
things.sort(>)


let otherThings = 1...5
print(otherThings.map {"HODOR\($0)"})


enum MyEnum {
    case Something(Int)
    case Other(String)
}

var myEnumValue = MyEnum.Something(23)
myEnumValue = .Other("abc")

enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

ASCIIControlCharacter.Tab.rawValue
ASCIIControlCharacter(rawValue: "\t")


indirect enum ArithmeticExpression {
    case Number(Int)
    case Addition(ArithmeticExpression, ArithmeticExpression)
    case Multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case .Number(let value):
        return value
    case .Addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .Multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let two = ArithmeticExpression.Number(2)
let three = ArithmeticExpression.Number(3)
let five = ArithmeticExpression.Number(5)
let sum = ArithmeticExpression.Addition(two, three)
let product = ArithmeticExpression.Multiplication(sum, five)

print(evaluate(product))    // 25




