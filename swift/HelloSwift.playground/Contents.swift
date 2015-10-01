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