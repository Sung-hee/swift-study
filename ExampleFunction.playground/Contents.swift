import UIKit

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)

func printTotalPrice(price: Int, count: Int) {
    print("TotalPrice = \(price * count)")
}

printTotalPrice(price: 1000, count: 5)

func printTotalPrice(_ price: Int, _ count: Int) {
    print("TotalPrice = \(price * count)")
}

printTotalPrice(1000, 5)

func printTotalPriceDefaultValue(price: Int = 1500, count: Int) {
    print("TotalPrice = \(price * count)")
}

printTotalPriceDefaultValue(count: 5)
printTotalPriceDefaultValue(price: 3000, count: 3)

func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculatePrice = totalPrice(price: 3000, count: 3)
print(calculatePrice)

func fullName(lastName: String, firstName: String) {
    print("fullName = \(lastName)\(firstName)")
}

fullName(lastName: "김", firstName: "성희")

func fullName2(_ lastName: String, _ firstName: String) {
    print("fullName = \(lastName)\(firstName)")
}

fullName2("김", "성희")

func returnFullName(lastName: String, firstName: String) -> String{
    let fullName = "fullName = \(lastName)\(firstName)"
    return fullName
}

print(returnFullName(lastName: "김", firstName: "성희"))

// In - Out parameter

var value = 3

func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}

incrementAndPrint(&value)

// Function as a params

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add
function(3, 5)

function = subtract
function(4, 2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5)
printResult(subtract, 10, 5)
