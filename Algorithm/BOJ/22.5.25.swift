//
//  22.5.25.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/05/25.
//

import Foundation

// 1269번, 대칭 차집합
let testCases = readLine()!.split(separator: " ").map{ Int($0)! }
let aCount = testCases[0]
let bCount = testCases[1]
var aSet = Set(readLine()!.split(separator: " ").map{ Int($0)! })
var bSet = Set(readLine()!.split(separator: " ").map{ Int($0)! })

let aMinusB = aSet.subtracting(bSet)
let bMinusA = bSet.subtracting(aSet)

print(aMinusB.count + bMinusA.count)

// 11478번, 서로 다른 부분 문자열
// 시간초과

let str = readLine()!

extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        let end = index(startIndex, offsetBy: min(self.count, range.upperBound))
        return String(self[start..<end])
    }
}

func getSubstrings(_ input: String) -> Set<String> {
    var set = Set<String>()
    for i in 0..<input.count {
        for j in 1..<input.count - i + 1 {
            set.insert(input[i..<j + i])
        }
    }
    return set
}

print(getSubstrings(str).count)

// 2477번, 참외밭

let k = Int(readLine()!)!
var lengths = [Int]()

for _ in 0..<6 {
    let length = readLine()!.split(separator: " ").map{ Int($0)! }
    lengths.append(length[1])
}

var W = 0
var H = 0
var w = 0
var h = 0

for i in 0..<6 {
    if i % 2 == 0 {
        if (W < lengths[i]) {
            W = lengths[i]
        }
    } else {
        if (H < lengths[i]) {
            H = lengths[i]
        }
    }
}

for i in 0..<6 {
    if i % 2 == 0 {
        if H == lengths[(i + 5) % 6] + lengths[(i + 1) % 6] {
            w = lengths[i]
        }
    } else {
        if W == lengths[(i + 5) % 6] + lengths[(i + 1) % 6] {
            h = lengths[i]
        }
    }
}

let result = (W * H - w * h) * k
print(result)
