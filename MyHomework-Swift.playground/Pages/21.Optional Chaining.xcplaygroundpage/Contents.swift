class Adress {
    
    var street = "Dzerzhinskogo"
    var number = "11"
    var city = "Minsk"
    var country = "Belarus"
}

struct Garage {
    var size = 2
}

class House {
    
    var rooms = 1
    var adress = Adress()
    var garage : Garage? = Garage()
}

class Car {
    
    var model = "Lada"
    
    func start() {
    }
}

class Person {
    
    var cars: [Car]? = [Car()]
    var house: House? = House()
}

let p = Person()

p.cars![0]
p.house!

p.house!.garage!.size























