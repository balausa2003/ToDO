//
//  Item.swift
//  TodoList
//
//  Created by Балауса Косжанова on 08.08.2022.
//

import Foundation

class StorageManagerService {
    static let itemKey = "items"
    static func saveItem(items:[Item]?) {
        let defaults = UserDefaults.standard
        var list = [String]()
        for item in items! {
            list.append((item.name))
        }
        defaults.set(list,forKey: itemKey)
        
    }
    static func loadItems()->[Item]? {
        var list = [Item]()
        var defaults = UserDefaults.standard
        let listStrings = defaults.value(forKey: itemKey) as! [String]
        for string in listStrings{
            let item = Item(name: string)
            list.append(item)
        }
        return list
    }
}

class Item {
    var name:String
    
    init (name:String) {
        self.name = name
    }
}
