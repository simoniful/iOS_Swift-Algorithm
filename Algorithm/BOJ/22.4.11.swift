//
//  22.4.11.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/11.
//

import Foundation

// 10818번, 최소, 최대
// 갯수 고려, 정렬

let numberCount = Int(readLine()!)!
let inputValues = readLine()!.split(separator: " ").map { Int($0)! }

func printMinMax(_ count: Int, _ array: [Int]) {
//    if count == 1 {
//        print("\(array[0]) \(array[0])")
//    } else {
//        print("\(array.min() ?? 0) \(array.max() ?? 0)")
//    }
    let sorted = array.sorted { $0 < $1 }
    print("\(sorted[0]) \(sorted[count - 1])")
}

printMinMax(numberCount, inputValues)

// 2562번, 최댓값
// 변수활용, readline이 여러줄로만 나올 때 - while

var count: Int = 0
var max = (0,0)

while count < 9 {
    let n = Int(readLine()!)!
    count += 1
    if max.1 < n {
        max = (count,n)
    }
}

print(max.1)
print(max.0)

// 2577번, 숫자의 개수
// 각 자리의 숫자 확인

var count: Int = 0
var input: Int = 1

while count < 3 {
    let n = Int(readLine()!)!
    count += 1
    input = input * n
}

let arrayInput = Array(String(input)).map { Int(String($0))! }

for i in 0...9 {
    let count = arrayInput.filter { $0 == i }.count
    print(count)
}

// 3052번, 나머지

var count: Int = 0
var inputArr: [Int] = []

while count < 10 {
    let n = Int(readLine()!)!
    count += 1
    inputArr.append(n)
}

print(Set(inputArr.map { $0 % 42 }).count)

// 1546번, 평균

let firstline = Int(readLine()!)!
let secondline = readLine()!.split(separator: " ").map { Int($0)! }

let points = secondline.map { point in
    Double(point) / Double(secondline.max()!) * 100
}

let average = Double(points.reduce(0, +)) / Double(firstline)

print(average)


// 8958번, OX퀴즈
// 2차원 배열 활용
// String subscript

extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else {
            return nil
        }
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}

var lines = [String]()

let firstline = Int(readLine()!)!
for _ in 0..<firstline { lines.append(readLine()!) }

for i in 0..<firstline {
    var count = 0
    var sum = 0
    
    for j in 0..<lines[i].count {
        if lines[i][j] == "O" {
            count += 1
        } else {
            count = 0
        }
        sum += count
    }
    print(sum)
}

// 4344번, 평균은 넘겠지

var lines = [[Int]]()

let firstline = Int(readLine()!)!
for _ in 0..<firstline { lines.append(readLine()!.split(separator: " ").map { Int($0)! }) }

let results = lines.map { Class -> String in
    let points = Class.dropFirst()
    let average = points.reduce(0, +) / Class[0]
    let result = Double(points.filter { $0 > average }.count) / Double(Class[0])
    return String(format: "%.3f", result * 100) + "%"
}

results.forEach { print($0) }
