//
//  ToDoListItem.swift
//  ToDolist
//
//  Created by Tetsuo NAKANO on 2021/08/24.
//

import Foundation
import CoreData
//@objc(NotificationsItem)

class ToDoListItem: NSManagedObject, Identifiable {
    @NSManaged var name: String?
    @NSManaged var createdAt: Date?
}

extension ToDoListItem {
    static func getAllToDoListItems() -> NSFetchRequest<ToDoListItem> {
        let request: NSFetchRequest<ToDoListItem> =
            ToDoListItem.fetchRequest() as!
            NSFetchRequest<ToDoListItem>
        
        let sort = NSSortDescriptor(key: "createdAt", ascending: true)
        request.sortDescriptors = [sort]
        
        return request
    }
}
