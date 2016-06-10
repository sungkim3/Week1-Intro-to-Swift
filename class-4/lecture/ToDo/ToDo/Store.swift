//
//  Store.swift
//  ToDo
//
//  Created by Sung Kim on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init()
    {
        if let
            data = NSData(contentsOfFile: ToDo.ArchiveURL.path!),
            storedItems = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [ToDo] {
            self.objects = storedItems
        }
    }
    typealias Object = ToDo
    var objects = [Object]()
}