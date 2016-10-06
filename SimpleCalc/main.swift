import Foundation
import Darwin

func count(list: Array<String>!) {
    print(list.count)
}

func avg(list: Array<String>!) {
    var total: Double = 0 // automatically handle decimals and negative numbers
    
    for number in list {
        total += (number as NSString).doubleValue
    }
    
    print(total / Double(list.count))
}

func fact(to: Int) {
    var factorial: Int = 1
    
    for i in 2...to { // start at 2 because multiplying by 1 doesn't do anything
        factorial *= i
    }
    
    print(factorial)
}

func add(num1: Double, num2: Double) {
    
}

func sub(num1: Double, num2: Double) {
    
}

func mul(num1: Double, num2: Double) {
    
}

func div(num1: Double, num2: Double) {
    
}

func mod(num1: Double, num2: Double) {
    
}

print("Enter an expression separated by returns")

let string1 = readLine(strippingNewline: true)

if string1 == "" {
    print("You need to enter a number.")
}
    
else {
    let op = readLine(strippingNewline: true)
    
    if op == "count" {
        count(list: string1?.components(separatedBy: " "))
        exit(1)
    }
    
    if op == "avg" {
        avg(list: string1?.components(separatedBy: " "))
        exit(1)
    }
    
    if op == "fact" {
        fact(to: (string1! as NSString).integerValue)
        exit(1)
    }
        
    else {
        let string2 = readLine(strippingNewline: true)
        
        if op == "+" {
            add(num1: (string1! as NSString).doubleValue, num2: (string2! as NSString).doubleValue)
        }
        
        if op == "-" {
            sub(num1: (string1! as NSString).doubleValue, num2: (string2! as NSString).doubleValue)
        }
        
        if op == "*" {
            mul(num1: (string1! as NSString).doubleValue, num2: (string2! as NSString).doubleValue)
        }
        
        if op == "/" {
            div(num1: (string1! as NSString).doubleValue, num2: (string2! as NSString).doubleValue)
        }
        
        if op == "%" {
            mod(num1: (string1! as NSString).doubleValue, num2: (string2! as NSString).doubleValue)
        }
    }
}
