//: Playground - noun: a place where people can play

import UIKit

var index = 100
switch index {
case 100:
    print("Value of index 100")
    fallthrough
case 10, 15 :
    print("Value of index is either 10 or 15")
    fallthrough
case 5:
    print("Value of index is 5")
    fallthrough
default:
    print("default case")
}

class MessageReceiver{
    let sender : String
    let recipient: String
    let timeStamp : NSDate
    init(sender: String, recipient: String) {
        self.sender = sender
        self.recipient = recipient
        timeStamp = NSDate()
    }
   convenience init(sender: String) {
        self.init(sender: sender, recipient: sender)
    }
}
class subclass: MessageReceiver {
    let content: String
    init(content: String, sender: String, recipient: String) {
        self.content = content
        super.init(sender: sender, recipient: recipient)
    }
    convenience init() {
        self.init(content: "")
    }
    convenience init(content: String) {
        self.init(content: content, sender: "MySelf")
    }
    convenience init(content: String, sender: String) {
        self.init(content: content, sender: sender, recipient: sender)
    }
}
