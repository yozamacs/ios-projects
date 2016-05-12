//: Playground - noun: a place where people can play

import UIKit

public class User {

    let firstName: String
    let middleName: String?
    let lastName: String
    var fullName: String {
        if let middleName = middleName {
            return "WITH MIDDLE NAME: \(firstName) \(middleName) \(lastName)"
        } else {
            return "NO MIDDLE NAME: \(firstName) \(lastName)"
        }
    }

    init(firstName: String, middleName: String? = nil, lastName: String) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
    }

    func middleNameLength() -> Int {
        guard let middleName = middleName else { return 0 }

        return middleName.characters.count

//        if let middleName = middleName {
//            return middleName.characters.count
//        }
//        else {
//            return nil
//        }
    }

}

public class Job {

    func hirePerson(person: User) {
        print("\(person.firstName), you're hired!")
    }

}

let user1 = User(firstName:"Lee", middleName:"William", lastName:"Fastenau")
let user2 = User(firstName:"Maryum", lastName:"Styles")

print (user1.fullName)
print (user2.fullName)

let length = user2.middleNameLength()

print (length)
