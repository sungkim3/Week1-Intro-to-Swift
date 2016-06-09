//: Playground - noun: a place where people can play

import UIKit


protocol Identity {
    
}
//Generics is denoted in this Store class with the <T>
//You can create constraints with protocols on the generic
class Store<T: Identity> {
    private var datastore = [T]()
    
    func add(element: T) {
        self.datastore.append(element)
    }
}

class Person: Identity {
    
}

let store = Store<Person>()
let person = Person()

store.add(person)