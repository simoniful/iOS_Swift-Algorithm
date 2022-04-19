//
//  22.4.19.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/19.
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

// 10989번, 수 정렬하기 3

let testCount = Int(readLine()!)!
var lines = [Int]()
var average = Int()
var medium = Int()
var sum = 0
var dict = [Int: Int]()
var range = Int()

for _ in 0..<testCount {
    let input = Int(readLine()!)!
    lines.append(input)
    sum += input
    dict[input, default: 0] += 1
}

average = Int(round(Double(sum) / Double(testCount)))
print(average)

lines.sort()
medium = lines[testCount / 2]
print(medium)

// value가 가장 큰 optional(key : value)
let maxValue = dict.max(by: {$0.value < $1.value})!.value

var mode = dict.filter({ $0.value == maxValue}).keys.sorted()
if mode.count > 1 {
    print("\(mode[1])")
} else {
    print("\(mode[0])")
}

range = lines.max()! - lines.min()!
print(range)

// 1427번, 소트인사이드

let inputValue = readLine()!
var arr = Array(inputValue).map{ Int(String($0))! }
arr.sort { $0 > $1 }
print(arr.map{ String($0) }.joined(separator: ""))

// 11650번, 좌표 정렬하기

let testCase = Int(readLine()!)!
var tuples = [(Int, Int)]()

for _ in 0..<testCase {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    tuples.append((input[0], input[1]))
}

let result = tuples.sorted { a, b in
    if a.0 == b.0 {
        return a.1 < b.1
    } else {
        return a.0 < b.0
    }
}

result.forEach { print("\($0.0) \($0.1)") }

// 11651번, 좌표 정렬하기 2

let testCase = Int(readLine()!)!
var tuples = [(Int, Int)]()

for _ in 0..<testCase {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    tuples.append((input[0], input[1]))
}

let result = tuples.sorted { a, b in
    if a.1 == b.1 {
        return a.0 < b.0
    } else {
        return a.1 < b.1
    }
}

result.forEach { print("\($0.0) \($0.1)") }

// 1181번, 단어 정렬

let testCase = Int(readLine()!)!
var words = [String]()

for _ in 0..<testCase {
    let input = readLine()!
    words.append(input)
}

words = Array(Set(words))

let result = words.sorted { a, b in
    if a.count == b.count {
        return a < b
    } else {
        return a.count < b.count
    }
}

result.forEach{ print($0) }


// 10814번, 나이순 정렬

let testCase = Int(readLine()!)!

// index, age, name
var tuples = [(Int, Int, String)]()

for i in 0..<testCase {
    let input = readLine()!.split(separator: " ")
    tuples.append((i , Int(input[0])!, String(input[1])))
}

let result = tuples.sorted { a, b in
    if a.1 == b.1 {
        return a.0 < b.0
    } else {
        return a.1 < b.1
    }
}

result.forEach{ print("\($0.1) \($0.2)") }

// 18870번, 좌표 압축
// 시간초과

let testCase = Int(readLine()!)!
let xArr = readLine()!.split(separator: " ").map { Int($0)! }
var result = [Int]()
var count = 0

for i in 0..<testCase {
    count = 0
    for j in 0..<testCase {
        if xArr[i] > xArr[j] {
            count += 1
        }
        if j == testCase - 1 {
            result.append(count)
        }
    }
}

print(result.map{ String($0) }.joined(separator: " "))

// for 문을 돌지 않고 hash로 찾는 방법 - 시간 단축

let testCase = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dict = [Int:Int]()
var next = 0
for i in arr.sorted() {
    if dict[i] == nil {
        dict[i] = next
        next += 1
    }
}
print("\(arr.map{ String(dict[$0]!) }.joined(separator: " "))")


