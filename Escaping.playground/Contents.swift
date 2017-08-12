//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/* Escaping Closure
 if closure is passed as an argument to a function and it is invoked after the function returns, the closure is escaping.
 */
import HealthKit
class HealthKitManager: NSObject {
    private let healthKitStore = HKHealthStore()
    
    func requestAuthorization(completion: @escaping(Bool, NSError?) -> Void) {
        var sharedTypes = Set<HKSampleType>()
        var readTypes = Set<HKSampleType>()
        
        //Add Workout Type
        sharedTypes.insert(HKSampleType.workoutType())
        readTypes.insert(HKSampleType.workoutType())
        
        //Request Authorization
        healthKitStore.requestAuthorization(toShare: sharedTypes, read: readTypes, completion: completion as! (Bool, Error?) -> Void)
        
    }
}
