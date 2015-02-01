// Playground - noun: a place where people can play

import UIKit

class Person {
    var name:String
    var age:Int
    var sex:String
    var weight:Int!
    lazy var p:Position = Position.EMPLOYER
    var description:String {
        return name + String(age) + sex
    }
    var calculateProp:Int {
        get {
            return 1
        }
        set {
           age = age*newValue
        }
    }
    var height:Int = 120{
        willSet {
            println("\(newValue)")
        }
        didSet {
            println("\(oldValue)")
        }
    }
    
    class var color:String {
        return "yellow"
    }
    
    convenience init() {
        self.init(name: "Ethan", age: 27, sex: "male")
    }
    
    init(name newName:String, age newAge:Int, sex newSex:String) {
        self.name = newName
        self.age = newAge
        self.sex = newSex
    }
    
    func say() -> String {
        return "我是：\(name) \(sex), 今年\(age)岁"
    }
    
    func run() -> String {
        return "\(name)在跑步"
    }
    
    func drive() -> String {
        return "\(name)在开车"
    }
    
    deinit {
        println("析构方法")
    }
}

enum Position {
    case EMPLOYER
    case EMPLOYEE
}

struct Animal {
    static var kind = "any"
}

println(Person(name: "Ethan", age: 27, sex: "male"))
