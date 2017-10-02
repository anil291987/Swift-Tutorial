
//
//  Card.swift
//  CardCollection
//
//  Created by Anil Upadhyay on 31/08/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import UIKit


enum Mode {
    case normal
    case edit
    case create
}

struct Card {
    let identifier : String
    let name : String
    let front : UIImage?
    let back : UIImage?
}
extension Card {
    enum Side {
        case front
        case back
    }
}
extension Card.Side: CustomStringConvertible {
    var description: String {
        switch self {
        case .front:
            return "front photo"
        case .back:
            return "back photo"
        }
    }
}
extension Card {
    var isValid : Bool {
        guard let _ = front, let _ = back, !name.isEmpty, !identifier.isEmpty else {
            return false
        }
        return true
    }
}
