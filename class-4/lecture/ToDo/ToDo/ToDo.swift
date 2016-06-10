//
//  ToDo.swift
//  ToDo
//
//  Created by Sung Kim on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class ToDo: NSObject, NSCoding, Identity {
    let taskItem: String
    let date: NSDate
    var id: String
    
    init(taskItem: String, date: NSDate = NSDate(), id: String = NSUUID().UUIDString) {
        self.taskItem = taskItem
        self.date = date
        self.id = id
        
        super.init()
    }
    func describe() -> String {
        return "Task: \(self.taskItem), Created At: \(self.date), TaskId: \(self.id)"
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(taskItem, forKey: PropertyKey.objectTask)
        aCoder.encodeObject(date, forKey: PropertyKey.objectDate)
        aCoder.encodeObject(id, forKey: PropertyKey.objectId)
    }
    required convenience init?(coder aDecoder: NSCoder) {
        let task = aDecoder.decodeObjectForKey(PropertyKey.objectTask) as! String
        let date = aDecoder.decodeObjectForKey(PropertyKey.objectDate) as! NSDate
        let id = aDecoder.decodeObjectForKey(PropertyKey.objectId) as! String
        
        self.init(taskItem: task, date: date, id: id)
    }
    
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains:.UserDomainMask).first!
    
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("tasks")
}

struct PropertyKey {
    static let objectTask = "task"
    static let objectDate = "date"
    static let objectId = "id"
}