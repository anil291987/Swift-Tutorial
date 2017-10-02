//: Playground - noun: a place where people can play

import UIKit

struct Student: Codable {
    var name: String
    var rollNo: Int?
    var joingDate: Date
}
let student = Student(name: "Ram", rollNo: 132, joingDate: Date())
let encoder = JSONEncoder()
encoder.dateEncodingStrategy = .iso8601
if let data = try? encoder.encode(student) {
    print(String(data: data, encoding: .utf8)!)
}

let decoder = JSONDecoder()
let jsonString = "{\"name\": \"Skyhopper\",\"joingDate\": \"Friday, Aug 18, 2017\"}"

let formatter = DateFormatter()
formatter.dateFormat = "EEEE, MMM dd, yyyy"

decoder.dateDecodingStrategy = .formatted(formatter)
let data1 = jsonString.data(using: .utf8)!

let student1 = try? decoder.decode(Student.self, from: data1)

print("Student: \(student1!)")
