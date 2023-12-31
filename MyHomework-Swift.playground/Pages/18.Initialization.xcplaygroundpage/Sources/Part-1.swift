import Foundation
/*
//Part-1. Designated Initializers and Convenience Initializers
class Student1 {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return firstName + " " + lastName
    }
    init() {
        self.firstName = ""
        self.lastName = ""
    }
}

class Student2 {
    var firstName = ""
    var lastName = ""
}

class Student3 {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
    class Student4 {
        var middleName: String?
    }

class Student5 {
    let maxAge: Int
    
    init() {
        maxAge = 100
    }
}
/*
class Student6 : Student5 {
    override init() {
        super.maxAge = 100
    }
}
*/

struct Student7 {
    var firstName: String
    var lastName: String
    
    init() {
        firstName = ""
        lastName = ""
    }
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let s1 = Student1()
let s2 = Student2()
let s3 = Student3(firstName: "A", lastName: "B")
let s5 = Student5()
let s7 = Student7(firstName: "a", lastName: "b")


class Human {
    var weight: Int
    var age: Int
    
    init(weight: Int, age: Int) { //Designated Initializers
        self.weight = weight
        self.age = age
    }
    //Convenience Initializers
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    convenience init() {
        self.init(weight: 0)
    }
    func test() {}
}

let h1 = Human(weight: 85, age: 28)
let h2 = Human(weight: 90, age: 25)
let h3 = Human()

class Student : Human {
    var firstName: String
    var lastName: String
    
    //Designated Initializers
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        super.init(weight: 0, age: 0)
        
        test()
        self.weight = 60
        test()
    }
    //Convenience Initializers
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "")
        self.age = 28
        test()
    }
}

let strudent1 = Student(firstName: "a")
let student2 = Student(firstName: "a", lastName: "")
*/
