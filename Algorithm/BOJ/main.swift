//
//  main.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/01.
//


import Foundation

// 10989번, 수 정렬하기 3
// 시간 초과

var lines = [Int]()
let testCount = Int(readLine()!)!

for _ in 0..<testCount {
    let input = Int(readLine()!)!
    lines.append(input)
}

let average = Int(round(Double(lines.reduce(0, +)) / Double(testCount)))
let medium = lines.sorted().filter{ $0 <= Int(average) }.last!
var frequency = Int()
var range = Int()

if lines.count == 1 {
    range = 0
} else {
    range = lines.max()! - lines.min()!
}

if Set(lines).count == lines.count {
    frequency = lines.count == 1 ? lines[0] : lines.sorted()[1]
} else {
    var array = lines
    let set = Array(Set(lines))
    
    for el in array {
        if set.contains(el), let idx = array.firstIndex(of: el) {
            array.remove(at: idx)
        }
    }
    frequency = array[0]
}

print(average, medium, frequency, range)

























    

