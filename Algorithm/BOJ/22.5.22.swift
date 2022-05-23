//
//  22.5.22.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/05/23.
//

import Foundation

// 1021번, 회전하는 큐

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let n = firstLine[0]
let m = firstLine[1]
var targets = readLine()!.split(separator: " ").map { Int($0)! }
var deque = [Int](1...n)
var answer = 0

enum Direction {
    case right
    case left
}

func rotate(_ direction: Direction) {
    switch direction {
    case .right:
        let temp = deque.removeLast()
        deque.insert(temp, at: 0)
    case .left:
        let temp = deque.removeFirst()
        deque.append(temp)
    }
}

func find() {
    let target = targets[0]
    guard let targetIndex = deque.firstIndex(of: target) else { return }
    if target == deque[0] {
        targets.removeFirst()
        deque.removeFirst()
    } else if targetIndex > deque.count / 2 {
        rotate(.right)
        answer += 1
    } else {
        rotate(.left)
        answer += 1
    }
}

while !targets.isEmpty {
    find()
}

print(answer)

// 5430번, AC
// 시간초과

let testCase = Int(readLine()!)!

for _ in 0..<testCase {
    let commands = Array(readLine()!).map{ String($0) }
    let arrCount = Int(readLine()!)!
    var arr = readLine()!
        .replacingOccurrences(of: "[\\[\\]]", with: "", options: .regularExpression)
        .split(separator: ",").map { Int(String($0))! }

    for command in commands {
        if command == "R" {
            arr.reverse()
        } else if command == "D" {
            if !arr.isEmpty {
                arr.removeFirst()
            }
        }
    }

    if arr.isEmpty {
        print("error")
    } else {
        let arrStr = arr.map{ String($0) }.joined(separator: ",")
        print("[\(arrStr)]")
    }
}


