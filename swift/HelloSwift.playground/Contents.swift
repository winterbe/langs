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


let symbol: String = "W" + "\u{20DD}"
print(symbol.characters.count)  // 1


