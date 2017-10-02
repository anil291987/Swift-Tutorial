//: Playground - noun: a place where people can play

import UIKit

typealias Details = [MyDetails]
struct MyDetails: Codable {
    var name: String
    var id: Int
    var isYou: Bool
    private enum CodingKeys: String, CodingKey {
        case name
        case id = "roomNo"
        case isYou
    }
}
let plistURL:URL? = Bundle.main.url(forResource: "test", withExtension: "plist")

var details: Details?

//if let data = try? Data(contentsOf: plistURL!){
//    let deCoder = PropertyListDecoder()
//    myDetails = try? deCoder.decode(MyDetails.self, from: data)
//}
do {
    if let plistURL = plistURL {
        let data = try Data(contentsOf: plistURL)
        let deCoder = PropertyListDecoder()
        details = try deCoder.decode(Details.self, from: data)
    }else{
        print("Invalid plist url")
    }
} catch  {
    print(error)
}
if let details = details {
    print(details)
}
let myDetails = MyDetails(name: "Mark", id: 1, isYou: false)


