//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 In Swift over five level of access available those are "open", "public", "internal", "fileprivate" and "Private"
 Open :
 # You can access open classes and class members form any source file in the defining module or any mudule that imports that module.
 # You can subclass an open class or override an open class member both within their defining and any module that imports that module.
 Public :
 # It allows you to same access as open - any source file in any module, bus has more restrictive subclassing and overriding.
 # You can only sub class a public class within the same module.
 # A public class member can be only overriden by subclasses in the same module.
 # This is important if you writing a framework. if you want a user of that framwork to be able to subclass a class or override a method you must make it open.
 Internal :
 # It allows you th use from any source file in the defining module but not from outside that module. This is generally the default access level.
 Fileprivate:
 # It allows you to use only within the defining source file.
 Private:
 # It allows use only form the enclosing declaration.
 */
class RootViewController: UIViewController {
    fileprivate var someFlag = false
}
protocol MyGreatDelegate {
    func doSomething()
}
extension RootViewController: MyGreatDelegate    {
    func doSomething() {
        if someFlag {
            
        }
    }
}
extension RootViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        handle(text: textField.text)
        return true
    }
   private func handle(text: String?) {
        
    }
}
class MyDataSource {
    fileprivate(set) var someFlag = false
}
// Final - Preventing Overrides
class Unicorn {
     func numberOfHorns() ->Int {
        return 1
    }
    
}
class Horse: Unicorn {
    
    override func numberOfHorns() -> Int {
        return 0
    }
}
