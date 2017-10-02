//
//  CardMo+CoreDataClass.swift
//  CardCollection
//
//  Created by Anil Upadhyay on 31/08/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import Foundation
import CoreData
import UIKit

public class CardMo: NSManagedObject {}

extension CardMo: ManageObjectProtocol {
    static var defaultSortDescriptors: [NSSortDescriptor] {
        return [NSSortDescriptor(key: "name", ascending: true)]
    }
    func toEntity() -> Card? {
        var front: UIImage?
        var back: UIImage?
        self.front.map { front = UIImage(data: $0 as Data) }
        self.back.map { back = UIImage(data: $0 as Data) }
        return Card(identifier: identifier, name: name, front: front, back: back)
    }
}

extension Card: ManageObjectConvertible {
    func toManagedObject(in context: NSManagedObjectContext) -> CardMo? {
        let card = CardMo.getOrCreateSingle(with: identifier, from: context)
        card.name = name
        card.identifier = identifier
        front.flatMap(UIImagePNGRepresentation).flatMap {
            card.front = NSData(data: $0)
        }
        back.flatMap(UIImagePNGRepresentation).flatMap {
            card.back = NSData(data: $0)
        }
        return card
    }
}
