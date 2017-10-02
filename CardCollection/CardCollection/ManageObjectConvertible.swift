//
//  ManageObjectConvertible.swift
//  CardCollection
//
//  Created by Anil Upadhyay on 31/08/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import CoreData

protocol ManageObjectConvertible {
    associatedtype ManagedObject: NSManagedObject

    func toManagedObject(in Context: NSManagedObjectContext) -> CardMo?
}
