//
//  22.4.17.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/17.
//

import Foundation

// 2798번, 블랙잭
// 조합 알고리즘

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let cards = readLine()!.split(separator: " ").map { Int($0)! }

func getCombination<T>(_ arr: [T], _ r: Int, _ res: inout [[T]], _ now: [T] = [T]()) {
    let n = arr.count
    guard n > 0 else { return }
    
    if r == 0 {
        res.append(now)
    } else if n == r {
        res.append(now + arr)
    } else {
        getCombination(Array(arr[1...]), r - 1, &res, now + [arr.first!])
        getCombination(Array(arr[1...]), r, &res, now)
    }
}

let arr = cards
let r = 3
var res = [[Int]]()

getCombination(arr, r, &res)

let result = res.map({ selection in selection.reduce(0, +)})
    .filter { $0 <= NM[1]}.sorted().last!

print(result)


// 2231번, 분해합

let N = Int(readLine()!)!

var result = [Int]()

for i in 1...N {
    let splitedSum = Array(String(i)).map{ Int(String($0))! }.reduce(0, +) + i
    if splitedSum == N {
        result.append(i)
    }
}

print(result.first ?? 0)

// 7568번, 덩치

let testCase = Int(readLine()!)!

var lines = [[Int]]()
var result = [Int]()

for _ in 0..<testCase {
    lines.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

for i in 0..<testCase {
    var rank = 1
    for j in 0..<testCase {
        if lines[i][0] < lines[j][0] && lines[i][1] < lines[j][1] {
            rank += 1
        }
    }
    print(rank, terminator: " ")
}
