//: Playground - noun: a place where people can play

import UIKit

protocol Identity {
    var id: String { get set }
}

class Student: Identity {
    let firstName: String
    let lastName: String
    var id: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        //universal unique identifier string = UUID
        self.id = NSUUID().UUIDString
    }
    
    func description() -> String {
        return "\(self.firstName) \(self.lastName): \(self.id)"
    }
}

protocol ObjectStoreProtocol {
    associatedtype Object: Identity
    
    func add(object: Object)
    func remove(object: Object)
    func removeAllObjects()
    func count() -> Int
    func allStudents() -> [Object]
}

class Store: ObjectStoreProtocol {
    //singleton?
    static let shared = Store()
    //private initializer
    private init() {}
    
    typealias Object = Student
    //we make students array private because we don't want the user to be able to manipulate the array outside of the functions we made available to them
    var students = [Object]()
    
    func add(object: Object) {
        self.students.append(object)
    }
    func remove(object: Object){
        self.students = self.students.filter({ (student) -> Bool in
            return object.id != student.id
        })
    }
    func removeAllObjects(){
        self.students.removeAll()
    }
    func count() -> Int{
        return self.students.count
    }
    func allStudents() -> [Object] {
        return self.students
    }
}

let studentOne = Student(firstName: "Michael", lastName: "Westen")
let studentTwo = Student(firstName: "Luke", lastName: "Martin")

Store.shared.add(studentOne)
Store.shared.add(studentTwo)

for student in Store.shared.allStudents() {
    print(student.description())
}
