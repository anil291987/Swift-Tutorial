//: Playground - noun: a place where people can play

import UIKit

// Error Handling

//Interview questions and answer Top 16
/*
1. How could you setup Live Rendering ?
 Ans: The attribute @IBDesignable let Interface Builder perform live updates on a particular view.
2. What is the difference between Synchronous & Asynchronous task ?
 Ans: Synchronous: waits untils the task has completed. Asynchronous: completes a task in background and can notify you when complete.
3. What are B-Trees ?
 Ans: B-trees are search trees that provide an ordered key-value store with excellent performance characteristics. In principle, each node maintains a sorted array of its own elements, and another array for its children.
 4. What is made up of NSError object ?
 Ans : There are three parts of NSError object a domain, an error code, and a user info dictionary. The domain is a string that identifies what categories of errors this error is coming from.
 5. What is Enum ?
 Ans : Enum is a type that basically contains a group of releated values in same umbrella.
 6. What is bounding box ?
 Ans : Bounding box is term used in geometry; its refer to the smallest measure (area or volume) within which a given set of Points.
 7. Why don't use we use strong for enum property in Objective-C?
 Ans: Because enums aren't objects, so we don't specify strong or weak here.
 8. What is @synthesize in Objective- C?
 Ans: synthesize generates getter and setter methods for your property.
 9. What is @dynamic in Objective-C?
 Ans: We use dynmaic for subclasses of NSManagedObject. @dynamic tells the compiler that getter and setters are implemented somewhere else.
 10. why do we use synchronized?
 Ans: Synchronized guarantees that only one thread can be executing that code in the block at any given time.
 11. What is the difference strong, weak, read only and copy ?
 Ans : strong, weak, assign property attribute define how memory for that property will be managed.
 Strong means that reference count will be increased and the reference to it will be maintained through the life of the object.
 Weak means that we are pointing to an object but not increasing its reference count. It's often used when creating a parent child reletionship. The parent has a strong reference to the child but the child only has a weak reference to the parent.
 Read only, we can set the property initially but then it can't be changed.
 Copy, means that we're copying the value of the object when it's created. Also prevents its value from changing.
 12. What is Dynamic Dispatch ?
 Ans : Dynamic dispatch is the process of selecting which implementation of a polymorphic operation that's a method or a function to call at run time. This means, that when we wanna invoke our methods like object metho. but Swift does not default to dynamic dispatch.
 13. What is code coverage ?
 Ans : Code coverage is a metric that helps us to measure the value of our unit tests.
 14. What is Completion Handler ?
 Ans : Completion handlers are super convenient when our app is making an API call, and we need to do something when that task is done, like updating the UI to show the data from the API call. We'll see completion handlers in Apple's APIs like dataTaskWithRequest and they can be pretty handy in your own code.
 
 The completion handler takes a chunk of code with 3 arguments:(NSData?, NSURLResponse?, NSError?) that returns nothing: Void. It's closure.
 
 The completion handlers have to marked @escaping since they are executed some point after the enclosing function has been executed.
 15. How to Prioritize Usability in Design ?
 Ans : Broke down its design process to prioritize usability in 4 steps:
     ■ Think like the user, than design UX.
     ■ Remember that users are people, not demographic.
     ■ When promoting an app, consider all the situations in which it could be useful.
     ■ Keep working on the utility of the app even after launch.
 16. What's difference between the frame and bounds ?
 Ans : The bounds of an UIView is the rectangle, expressed as a location (x,y) and size(width, height) relative to its own coordinates system(0,0).
     The frame of an UIView is the ractangle, expressed as location(x,y) and size(width, height) relative to the superview it is contained within.
*/
/* Interview Question for top 16
 1. Please explain Method Swizzling in Swift.
 Ans : Method Swizzling is a well known for pactice Objective-C and in other languages that support dynamic method dispathing.
 Through swizzling the implementation of a methos can be replaced with a different one at runtime, by changing the mapping between a specific #selector(method) and function that contains its implementation.
 To use method swizzling with the swift classes there are two requirements that you must comply with:
     ■ The class containing the methods to be swizzled must extend NSObject.
     ■ The methods you want to swizzle must have the dynamic attribute.
 2. What is the difference between Non-escaping and Escaping Closures ?
 Ans: The lifecycle of a non-escaping closure in simple:
     ■ Pass the closure into a function.
     ■ The function runs the closure (or not).
     ■ The function returns
 
 Escaping closure means, inside the function, you can still run the closure (or not), the extra bit of closure is stored some place that will outlive the function. There are several ways to have a closure escape its containing funtion:
 ■ Asynchrounous execution: If you execute the closure asynchronously on a dispatch queue, the queue will hold onto for you. You have no idea when the closure will be executed and there's no guarantee it will complete before the function returns.
 ■ Storage: Storing the closure to a global variable, property, or any other bit of storage that lives on past the functions  call means that closure has also escaped.
 
 */
class ClassA {
    func someMethod(closure:  () -> Void)  {
        
    }
}
class ClassB {
    let classA = ClassA()
    var someProperty = "Hello"
    func testClosure() {
        classA.someMethod {
            someProperty = "Inside the closure"
        }
    }
}
let classB = ClassB()
classB.testClosure()
/*
 3. Explain [weak self] and [unowned  self] ?
 Ans : Unowned does the same as weak with one exception: The variable will not become nil and therefore the variable must not be an optional.
 
     But when you try to access the variables after its instance has been deallocated.
     However, if you don't want the variable to be weak AND you are sure that it can't be accessed after the corresponding instance has been deallocated, you can use unowned.
     By declaring it [weak self] you get to handle the case that it might be nil inside the closure at the some point and therefore the variable must be an optional. A case for using [weak self] in an asynchrounous network request, is in a view controller where that request is used to populate the view.
 4. What is ARC ?
 Ans: ARC is a compile time feature that Apple's version of automated memory management. It stands for Automatic Reference Counting. This means that it only frees up memory for objects when there are zero strong reference/ to them.
 5. Explain #keyPath() ?
 Ans: Using #keyPath(), a static type check will be performed by virtue of the key-path literal string being used as a StaticString or StringLiteralConvertible. At this point, it's then checked to ensure that it
     ■ is actually a thing that exists and
     ■ is properly exposed to Objective-C.
6. 
 */
