/*: 
⬇️ *Vous pouvez ignorez le code ci-dessous, il nous permet juste d'initialiser et de visualiser le canvas à droite.*
 */
import PlaygroundSupport
let canvas = Canvas()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = canvas

/*:
 - - -
 # Découverte du canevas
 Le canevas, c'est l'étendue de pelouse verte qui se trouve sur la droite 🌿.
 Sur ce canevas, nous allons pouvoir dessiner notre route. Et nous allons faire cela en utilisant les fonctions proposées par le canevas :
 ## Route

 `canvas.createRoadSection()`
 - 🛣 Cette fonction permet de **créer une section de route**. A chaque appel de cette fonction, une nouvelle section de route est crée.

 `canvas.createHomeRoadSection()`
 - 🛣🏠 Similaire à la précédente, cette fonction permet de créer une section de route **qui contient une maison**.

 `canvas.createSchoolRoadSection()`
 - 🛣🏫 Similaire à la précédente, cette fonction permet de créer une section de route **qui contient une école**.

 ## Bus
 `canvas.moveBusForward()`

 - 🚌➡️ Cette fonction permet de faire avancer le bus jusqu'à la section de route suivante. Attention, le bus ne peut pas avancer s'il n'y a plus de route devant lui.

 `canvas.stopBus()`
 - 🚌🛑 Cette fonction permet de faire marquer un arrêt au bus.

 ## A vous de jouer !
 */


canvas.createRoadSection()
canvas.createRoadSection()
canvas.createRoadSection()

canvas.createHomeRoadSection()
canvas.createRoadSection()

canvas.createSchoolRoadSection()

canvas.moveBusForward()
canvas.moveBusForward()
canvas.moveBusForward()

canvas.stopBus()

canvas.moveBusForward()
canvas.moveBusForward()

canvas.stopBus()

var numberOfStudentsAtSchool = 0

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
    
    deinit {
        numberOfStudentsAtSchool += occupiedSeat
    }
}

class RoadSection {
   
    init(){
        canvas.createRoadSection()
    }
}

class Road {
   var sections = [RoadSection]()
    
   init(length: Int) {
      for _ in 0..<length {
         self.sections.append(RoadSection())
      }
   }
}

class Student {
  var name: String
  var surname: String
  var age = 0
  
  init(name: String, surname: String) {
    self.name = name
    self.surname = surname
  }
}

var road = Road(length: 20) // Vous devriez voir une route de 20 sections se dessiner sur le canevas.

var bus = Bus(driverName: "Joe", seat: 32, age: 43,  occupiedSeat: 0)

bus.driverName
bus.occupiedSeat += 1
bus.occupiedSeat += 1
