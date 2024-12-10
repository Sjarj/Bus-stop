/*: 
⬇️ *Vous pouvez ignorez le code ci-dessous, il nous permet juste d'initialiser et de visualiser le canvas à droite.*
 */
import PlaygroundSupport
let canvas = Canvas()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = canvas


var numberOfStudentsAtSchool = 0

// Mark: - class Bus

class Bus {
    var driverName : String
    var age : Int
    var seat : Int
    var occupiedSeat = 0
    let nuberOfWeel = 4
    
    init(driverName: String, seat: Int, age: Int, occupiedSeat: Int ) {
        self.driverName = driverName
        self.seat = seat
        self.age = age
        self.occupiedSeat = occupiedSeat
    }
    
    func moveForward() {
        canvas.moveBusForward()
    }
    
    func stop() {
        canvas.stopBus()
    }
    
    func drive(road: Road) {
        for _ in road.sections {
            moveForward()
        }
    }
    
    deinit {
        numberOfStudentsAtSchool += occupiedSeat
    }
}


// Mark - Heritage Bus
class SchoolBus: Bus {
    var schoolName = ""
}


// Mark: - class RoadSection

class RoadSection {
   
    init(){
        canvas.createRoadSection()
    }
}

// Mark: - class Road

class Road {
   static let maxLength = 77
   var sections = [RoadSection]()
    
   init(length: Int) {
       
       var  length = length
       if length > Road.maxLength {
           length = Road.maxLength
       }
       
      for _ in 0..<length {
         self.sections.append(RoadSection())
      }
   }
}

// Mark: - class Student

class Student {
  var name: String
  var surname: String
  var age = 0
  
  init(name: String, surname: String) {
    self.name = name
    self.surname = surname
  }
    
    static func createJamesBond() -> Student {
        let bond = Student(name: "James", surname: "Bond")
            bond.age = 40
            return bond
    }
    
    func presentYourself() -> String {
        return "Bonjour, je m'appelle \(name) \(surname)"
    }
    
    func celebrateYourBirthday() {
        age += 1
    }
}

class Developper : Student {
    var machine = "Mac"
}

class Translator : Student {
    var languages = [String]()
}

class Athlete : Student{
    var record100m = 10.0
}


var road = Road(length: 20) // Vous devriez voir une route de 20 sections se dessiner sur le canevas.
var myBus = Bus(driverName: "Jean",seat: 36,age: 23, occupiedSeat: 0)
myBus.drive(road: road) // Le bus avance jusqu'au bout de la route
// Test SchoolBus
var schoolBus = SchoolBus(driverName: "James", seat: 20, age: 30, occupiedSeat: 10)
