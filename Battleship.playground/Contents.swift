//: Playground - noun: a place where people can play

import Foundation

class Board {
    var ships = [Ship]() // Array<Ship>
    var ocean = [[Bool]](count:5,repeatedValue:[Bool](count:5,repeatedValue:false))
    
    func addShips(shipDescriptors:[ShipDescriptor]) {
        for shipDesc in shipDescriptors {
            ships.append(Ship(shipDescriptor: shipDesc))
        }
    }
    
    func fire(location:Location) -> Status{
        var result = Status.Invalid
        if(!ocean[location.x][location.y]){
           ocean[location.x][location.y] = true
            for ship in ships {
                result = ship.check(location)
                if result == .Hit || result == .Sunk {
                    break
                }
            }
        }
        print(result)
        return result
    }

}

class Player {
    let board = Board()
    
    let name:String
    
    init(_ name: String) {
        self.name = name
    }
    
    func setUp(shipDesc:[ShipDescriptor]) {
        board.addShips(shipDesc)
    }
    
    func fire(location: Location) {
        board.fire(location)
    }
}

class Ship {
    var hitsLeft:Int
    let shipLocation: Location
    let size:Int
    
    init(shipDescriptor: ShipDescriptor) {
        hitsLeft = shipDescriptor.length
        shipLocation = (shipDescriptor.x,shipDescriptor.y)
        size = shipDescriptor.length
    }
    
    func check(attackLocation: Location) -> Status {
        if(attackLocation.x==shipLocation.x) {
            if(attackLocation.y >= shipLocation.y && attackLocation.y < shipLocation.y+size) {
                hitsLeft = hitsLeft-1
                if(hitsLeft==0) {
                    return .Sunk
                }
                else {
                    return .Hit
                }
            }
        }
        return .Miss
    }
}

typealias ShipDescriptor = (length: Int, x: Int, y: Int)
typealias Location = (x: Int, y:Int)

enum Status {
    case Hit
    case Sunk
    case Miss
    case Invalid
}


func shipTest() {
    let player1 = Player("Lee")
    //let player2 = Player("Maryum")
    
    player1.setUp([(3,3,1),(2,1,3),(4,0,1)])
    //player2.setUp([(2,3,1),(4,1,1),(1,3,4)])
    player1.fire((3,2))
    //player2.fire((1,3))
    player1.fire((1,4))
    player1.fire((1,3))
}

shipTest()









//
//
//var arrayTest: [[Int]] = [[1,2,3],[4,7,8],[9,8,10]]
//
//print(arrayTest[0][1])
//
//var arrayTest2: [[String]] = [["cats","dogs","apples"],["my goodness","gosh","geeze louise"]]
//
//var dog = arrayTest2[0][1]
//
//print(dog)
//
//print(arrayTest2[0][1])
//
//var arrayTest3: [[Bool]] = [[false,true,false],[true,false,true],[false,false,true]]
//
//var thing = arrayTest3[2][2]
//
//print(thing)
//
//if(thing) {
//    print("awesome!")
//}
//
//print(arrayTest3[1][2])
//
//var arrayTest4: [Bool] = [false,true,false,true,true]
//
//print(arrayTest4[1])

let currentDate = NSDate()

let userTime = "16:50"

let inFormatter = NSDateFormatter()
inFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
inFormatter.dateFormat = "HH:mm"
let date = inFormatter.dateFromString(userTime)!

let anotherTime = "0:01"

let anotherDate = inFormatter.dateFromString(anotherTime)

var compare = date.compare(anotherDate!)

compare.hashValue

date.timeIntervalSinceDate(anotherDate!)

let dateFormatter = NSDateFormatter()

dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle

dateFormatter.stringFromDate(currentDate)

func ordinalSuffix(num: Int) -> String {
    let ones: Int = num % 10
    let tens: Int = Int(floor(Float(num) / Float(10))) % 10
    var suffix: String = "th"
    
    if (tens != 1) {
        switch(ones) {
        case 1:
            suffix = "st"
        case 2:
            suffix = "nd"
        case 3:
            suffix = "rd"
        default:
            break
        }
    }

    return suffix
}

ordinalSuffix(21)

let calendar = NSCalendar.currentCalendar()
let components = NSDateComponents()
components.day = 11
components.month = 02
components.year = 2016
components.hour = 19
components.minute = 30
var newDate = calendar.dateFromComponents(components)

var nextPaymentFormatter:NSDateFormatter {
    let formatter = NSDateFormatter()
    formatter.dateFormat = "MMM d" // Jul 30
    return formatter
}

public func indexOfCharacter(char:Character,_ word:String) -> Int? {
    if let index = word.characters.indexOf(char)
    {
        return word.startIndex.distanceTo(index)
    }
    return nil
}


public func substringFromCharacter(char:Character,_ word:String) -> String?
{
    if let charIndex = indexOfCharacter(char,word)
    {
        let something = word.characters.count
        let remainingLength = word.characters.count - (charIndex + 1)
        let stringIndex = word.startIndex.advancedBy(charIndex).advancedBy(remainingLength)
        return word.substringFromIndex(stringIndex)
        
    }
    return nil
}

let dateString = nextPaymentFormatter.stringFromDate(newDate!)
let dayOfMonth = Int(substringFromCharacter(" ","Feb 23")!)!

let components2 = calendar.components([.Day], fromDate: newDate!)
let anotherDayOfMonth = components2.day

