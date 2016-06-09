//: Playground - noun: a place where people can play

import UIKit

protocol Identity {
    var id: String { get set }
}

class ToDo: Identity {
    let taskItem: String
    let date: NSDate
    var id: String

    init(taskItem: String) {
        self.taskItem = taskItem
        self.date = NSDate()
        self.id = NSUUID().UUIDString
    }
    func describe() -> String {
        return "Task: \(self.taskItem), Created At: \(self.date), TaskId: \(self.id)"
    }
}

protocol ObjectStoreProtocol: class {
    associatedtype Object: Identity
    var objects: [Object] { get set }
    
    func add(object: Object)
    func remove(object: Object)
    func removeAllObjects()
    func count() -> Int
    func objectAtIndex(index: Int) -> Object
    func allObjects() -> [Object]
}

extension ObjectStoreProtocol {
    func add(object: Object) {
        self.objects.append(object)
    }
    func remove(inputObject: Object) {
        self.objects = self.objects.filter({ (targetObject) -> Bool in
            return inputObject.id != targetObject.id
        })
    }
    func removeAllObjects() {
        self.objects.removeAll()
    }
    func count() -> Int {
        return self.objects.count
    }
    func objectAtIndex(index: Int) -> Object {
        return self.objects[index]
    }
    func allObjects() -> [Object] {
        return self.objects
    }
}

class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init() {}
    typealias Object = ToDo
    var objects = [Object]()
}

let toDoOne = ToDo(taskItem: "Grab a beer")
let toDoTwo = ToDo(taskItem: "Drink beer")

Store.shared.add(toDoOne)
Store.shared.add(toDoTwo)

for task in Store.shared.allObjects() {
    print(task.describe())
}

Store.shared.remove(toDoOne)

for task in Store.shared.allObjects() {
    print(task.describe())
}