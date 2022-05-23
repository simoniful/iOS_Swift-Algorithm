//
//  22.5.4.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/05/04.
//

import Foundation

// 1966번, 프린터 큐

let testCase = Int(readLine()!)!

for _ in 1...testCase {
    let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
    let m = firstLine[1]
    
    var printCount = 0
    
    var secondLine = readLine()!.split(separator: " ").map{ Int($0)! }
    var result: [(Int, Int)] = []
    
    for (index, priority) in secondLine.enumerated() {
        let tuple = (priority, index)
        result.append(tuple)
    }
    
    secondLine.sort()
    
    while true {
        if result[0].0 == secondLine.max() {
            printCount += 1
            if result[0].1 == m {
                print(printCount)
                break
            } else {
                result.removeFirst()
                secondLine.popLast()
            }
        } else {
            result.append(result.removeFirst())
        }
    }
}

// 10866번, 덱

var deque:[Int] = []

for _ in 0..<Int(readLine()!)! {
    let C = readLine()!.split{$0==" "}.map{String($0)}
    let command = C.first!
    var num = 0
    
    if C.count > 1 {
        num = Int(C.last!)!
    }
    
    switch command {
    case "push_front":
        deque.insert(num, at: 0)
    case "push_back":
        deque.append(num)
    case "pop_front":
        print(deque.isEmpty ? -1 : deque.removeFirst())
    case "pop_back":
        print(deque.isEmpty ? -1 : deque.removeLast())
    case "size":
        print(deque.count)
    case "empty":
        print(deque.isEmpty ? 1:0)
    case "front":
        print(deque.isEmpty ? -1 : deque.first!)
    default:
        print(deque.isEmpty ? -1 : deque.last!)
    }
}
