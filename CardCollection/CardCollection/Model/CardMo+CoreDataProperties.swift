//
//  CardMo+CoreDataProperties.swift
//  CardCollection
//
//  Created by Anil Upadhyay on 31/08/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import Foundation
import CoreData


extension CardMo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CardMo> {
        return NSFetchRequest<CardMo>(entityName: "CardMo")
    }

    @NSManaged public var identifier: String
    @NSManaged public var name: String
    @NSManaged public var front: NSData?
    @NSManaged public var back: NSData?

}
