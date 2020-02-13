import UIKit

/// Optionals

// Unwrapping Optionals

var name: String? = nil

if let unwrappedname = name {
    print("Count is \(unwrappedname.count)")
}
else {
    print("Missing name")
}

// Unwrapping using guard let allows unwrapped optional to remain usable after the guard code.

func greet(name:String?) {
    guard let unwrappedname = name else {
        print("Missing name")
        return
    }
    print(unwrappedname)
}

greet(name: nil)

// Force Unwrapping

let str = "5"
let num = Int(str)!

//Implicitly Unwrapped Optionals

let age: Int! = nil


// Nil Coalescing

let number: Int? = nil
let defNum:Int = number ?? 0

// Optional Chaining

var cricketers = ["Sachin","Virat"]
let bestCricketer = cricketers.first?.uppercased()


// Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}


// Failable initializers

struct Person {
    var id: String
    
    init?(id:String) {
        if id.count == 9 {
            self.id = id
        }
        else {
            return nil
        }
    }
}

// Typecasting

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
