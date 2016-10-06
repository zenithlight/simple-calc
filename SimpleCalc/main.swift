import Foundation

func count(list: String?) {
    
}

func avg(list: String?) {
    
}

func fact(list: String?) {
    
}

func add(num1: String?, num2: String?) {
    
}

func sub(num1: String?, num2: String?) {
    
}

func mul(num1: String?, num2: String?) {
    
}

func div(num1: String?, num2: String?) {
    
}

func mod(num1: String?, num2: String?) {
    
}

print("Enter an expression separated by returns")

let string1 = readLine(strippingNewline: true)

if string1 == "" {
    print("You need to enter a number.")
}
    
else {
    let op = readLine(strippingNewline: true)
    
    if op == "count" {
        count(list: string1)
    }
    
    if op == "avg" {
        avg(list: string1)
    }
    
    if op == "fact" {
        fact(list: string1)
    }
        
    else {
        let string2 = readLine(strippingNewline: true)
        
        if op == "+" {
            add(num1: string1, num2: string2)
        }
        
        if op == "-" {
            sub(num1: string1, num2: string2)
        }
        
        if op == "*" {
            mul(num1: string1, num2: string2)
        }
        
        if op == "/" {
            div(num1: string1, num2: string2)
        }
        
        if op == "%" {
            mod(num1: string1, num2: string2)
        }
    }
}
