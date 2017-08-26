//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

public struct Array2D<T> {
    public let columns: Int
    public let rows: Int
    fileprivate var array: [T]
    
    public init(columns: Int, rows: Int, initialValue: T) {
        self.columns = columns
        self.rows = rows
        array = .init(repeating: initialValue, count: rows*columns)
    }
    
    public subscript(column: Int, row: Int) -> T {
        get {
            precondition(column < columns, "Column \(column) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            precondition(row < rows, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            return array[row*columns + column]
        }
        set {
            precondition(column < columns, "Column \(column) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            precondition(row < rows, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            array[row*columns + column] = newValue
        }
    }
}
func combinationCounts(input1: Int)->Int
{
    var dict:Dictionary<String,[String]> = Dictionary()
    dict["A"] = ["A","B","D"]
    dict["B"] = ["A","B","C","E"]
    dict["C"] = ["B","C","F"]
    dict["D"] = ["A","D","E","G"]
    dict["E"] = ["B","D","E","F","H"]
    dict["F"] = ["C","E","F"]
    dict["G"] = ["D","G","H"]
    dict["H"] = ["E","G","H","I","J"]
    dict["I"] = ["H","I","F"]
    dict["J"] = ["H","J"]
    
   
    var matrix = Array2D(columns: input1, rows: 10, initialValue: 0)
    for i in 0..<10 {
        matrix[0,i] = 1
    }
    
    for i in 1..<input1 {
        var j = 0
        for (_, value) in dict {
            var count = 0
            let temp:[String] = value
            for k in 0..<temp.count {
                count += matrix[i-1, k];
            }
            matrix[i , j] = count
            j  += 1
        }
    }
    
    var sum = 0

     for k in 0..<10 {
        sum += matrix[input1-1,k];
    }
 
    return sum;
}
combinationCounts(input1: 3)
/*
func test(input: Int) -> Int {
    let NumColumns = 10
    let NumRows = input
    
    var array = [[Int]]()
    for _ in 0...10 {
        var row = [Int]()
        for _ in 1...input {
            row.append(0)
        }
        array.append(row)
    }
//    var array = Array<Array<Int>>()
//    
//    for _ in 0..<NumColumns {
//        var columnArray = Array<Int>()
//        for row in 0..<NumRows {
//            if row == 1{
//                columnArray.append(1)
//            }else{
//                columnArray.append(0)
//  
//            }
//        }
//        array.append(columnArray)
//    }
    var dict:Dictionary<String,[String]> = Dictionary()
    dict["A"] = ["A","B","D"]
    dict["B"] = ["A","B","C","E"]
    dict["C"] = ["B","C","F"]
    dict["D"] = ["A","D","E","G"]
    dict["E"] = ["B","D","E","F","H"]
    dict["F"] = ["C","E","F"]
    dict["G"] = ["D","G","H"]
    dict["H"] = ["E","G","H","I","J"]
    dict["I"] = ["H","I","F"]
    dict["J"] = ["H","J"]
    
    for i in 1..<input {
        var j = 0
        for (_, value) in dict {
            var count = 0
            let temp:[String] = value
            for k in 0..<temp.count {
                if temp[k] != "A" {
                    count += array[i-1][0] + temp.index(of: temp[k])!
                }
            }
            array[i][j] = count
        }
        j = j + 1
    }
    print(array)

    return array.count
}
//test(input: 2)
*/
func factorial(_ factorialNumber: Int64) -> Int64 {
    if factorialNumber == 0 {
        return 1
    } else {
        return factorialNumber * factorial(factorialNumber - 1)
    }
}
func combinationCounts(input: Int64)->Int64{
    var dict:Dictionary<String,[String]> = Dictionary()
    dict["A"] = ["A","B","D"]
    dict["B"] = ["A","B","C","E"]
    dict["C"] = ["B","C","F"]
    dict["D"] = ["A","D","E","G"]
    dict["E"] = ["B","D","E","F","H"]
    dict["F"] = ["C","E","F"]
    dict["G"] = ["D","G","H"]
    dict["H"] = ["E","G","H","I","J"]
    dict["I"] = ["H","I","F"]
    dict["J"] = ["H","J"]
    let count =  Int64(dict.count - 1)
    let nineFactorial = factorial(count)
    let twoFactorial  = factorial(input)
    let sevenFactorial = factorial(count-input)
    let answer = nineFactorial / (twoFactorial * sevenFactorial)
    
    return answer
}
print("Combination of 2 is \(combinationCounts(input: 1))")

