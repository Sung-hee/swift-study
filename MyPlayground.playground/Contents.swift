import UIKit
import Foundation

var str = "Hello, playground"

let random = arc4random_uniform(100)
print("--> \(random)")

// Tuple

let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x: 1, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let (x3, y3) = coordinatesNamed
x3
y3

var hours = 50
var payPerHour = 10000
var salary = 0

if (hours > 40) {
    let extraHours = hours - 40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
}

salary += hours * payPerHour

print("-----while")
var i = 10
while i < 10 {
    print(i)
    
    i += 1
}

print("-----repeat")
i = 10
repeat {
    print(i)
    i += 1
} while i < 10

// for Loop
let closedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0
for i in closedRange {
    print("----> \(i)")
    sum += i
}

print("--->Total Sum : \(sum)")

var sinValue: CGFloat = 0

for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "Hees"
for _ in closedRange {
    print("name --> \(name)")
}

for i in closedRange where i % 2 == 0 {
    print("----> 짝수 : \(i)")
}
