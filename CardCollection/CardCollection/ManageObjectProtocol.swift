//
//  ManageObjectProtocol.swift
//  CardCollection
//
//  Created by Anil Upadhyay on 31/08/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import CoreData

protocol ManageObjectProtocol {
    associatedtype Entity
    func toEntity() -> Entity?
}
extension ManageObjectProtocol where Self: NSManagedObject {
    
    static func getOrCreateSingle(with id: String, from context: NSManagedObjectContext) -> Self {
        let result = single(from: context, with: nil) ?? insertNew(in: context)
        result.setValue(id, forKey: "identifier")
        return result
    }
    static func single(from context: NSManagedObjectContext, with predicate:NSPredicate?, sortDescriptors: [NSSortDescriptor]?) -> Self? {
        return fetch(from: context, with: predicate, sortDescriptors: sortDescriptors, fetchLimit: 1)?.first
    }
    static func single(from context: NSManagedObjectContext, with predicate:NSPredicate?) -> Self? {
        return single(from: context, with: predicate, sortDescriptors: nil)
    }
    static func insertNew(in context: NSManagedObjectContext) -> Self {
        return Self(context: context)
    }
    static func fetch(from context: NSManagedObjectContext, with predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor]?, fetchLimit: Int?)-> [Self]? {
        let fetchRequest = Self.fetchRequest()
        fetchRequest.sortDescriptors = sortDescriptors
        fetchRequest.predicate = predicate
        fetchRequest.returnsObjectsAsFaults = true
        
        if let fetchLimit = fetchLimit {
            fetchRequest.fetchLimit = fetchLimit
        }
        var result: [Self]?
        context.performAndWait { () -> Void in
            do {
                result = try context.fetch(fetchRequest) as? [Self]
            }catch{
                result = nil
                //Report Error
                print("CoreData fetch error \(error)")
            }
            
        }
        return result
    }
    
}
