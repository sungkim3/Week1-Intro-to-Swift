//
//  ObjectStoreProtocol.swift
//  ToDo
//
//  Created by Sung Kim on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ObjectStoreProtocol: class {
    associatedtype Object: NSObject, Identity
    var objects: [Object] { get set }
    
    func add(object: Object)
    func remove(object: Object)
    func removeAllObjects()
    func count() -> Int
    func objectAtIndex(index: Int) -> Object
    func allObjects() -> [Object]
    func save(file: String)
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
    // MARK: NSCoding
    
    func save(file: String)
    {
        NSKeyedArchiver.archiveRootObject(self.objects, toFile: file)
    }
}
