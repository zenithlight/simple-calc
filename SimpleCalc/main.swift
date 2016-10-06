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
    if (to < 1) {
        print("Factorial number must be more than 1.")
        exit(0)
    }
    
    var factorial: Int = 1
    
    for i in 1...to {
        factorial *= i
    }
    
    print(factorial)
}

func add(num1: Double, num2: Double) {
    print(num1 + num2)
}

func sub(num1: Double, num2: Double) {
    print(num1 - num2)
}

func mul(num1: Double, num2: Double) {
    print(num1 * num2)
}

func div(num1: Double, num2: Double) {
    if (num2 == 0) {
        print("You can't divide by zero.")
        exit(0)
    }
    
    print(num1 / num2)
}

func mod(num1: Double, num2: Double) {
    print(num1.truncatingRemainder(dividingBy: num2))
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
        
        else if op == "-" {
            sub(num1: (string1! as NSString).doubleValue, num2: (string2! as NSString).doubleValue)
        }
        
        else if op == "*" {
            mul(num1: (string1! as NSString).doubleValue, num2: (string2! as NSString).doubleValue)
        }
        
        else if op == "/" {
            div(num1: (string1! as NSString).doubleValue, num2: (string2! as NSString).doubleValue)
        }
        
        else if op == "%" {
            mod(num1: (string1! as NSString).doubleValue, num2: (string2! as NSString).doubleValue)
        }
        
        else {
            print("That was not a recognized operator.")
        }
    }
}
