//
//  22.4.27.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/27.
//

import Foundation

// 1431번, 시리얼 번호

let testCount = Int(readLine()!)!
var serials = [String]()
for _ in 0..<testCount {
    serials.append(readLine()!)
}

serials.sort { a, b in
    if a.count == b.count {
        let c = Array(a).compactMap{ Int(String($0)) }.reduce(0, +)
        let d = Array(b).compactMap{ Int(String($0)) }.reduce(0, +)
        if c == d {
            return a < b
        } else {
            return c < d
        }
    } else {
        return a.count < b.count
    }
}

serials.forEach{ print($0) }

// 10828번, 스택

let testCount = Int(readLine()!)!
var commands = [String]()
for _ in 0..<testCount {
    commands.append(readLine()!)
}

var stack = [Int]()

for command in commands {
    if command.starts(with: "push") {
        let element = Int(command.split(separator: " ")[1])!
        stack.append(element)
    } else if command.starts(with: "pop") {
        let result = stack.popLast() ?? -1
        print(result)
    } else if command.starts(with: "size") {
        print(stack.count)
    } else if command.starts(with: "empty") {
        let result = stack.isEmpty ? 1 : 0
        print(result)
    } else if command.starts(with: "top") {
        let result = stack.last ?? -1
        print(result)
    }
}

// 10773번, 제로

let testCount = Int(readLine()!)!
var commands = [Int]()
for _ in 0..<testCount {
    commands.append(Int(readLine()!)!)
}

var stack = [Int]()

for command in commands {
    if command != 0 {
        stack.append(command)
    } else {
        let _ = stack.popLast()
    }
}

let result = stack.reduce(0, +)
print(result)

// 9012번, 괄호

let count = Int(readLine()!)!
var stack: [Character] = []
for _ in 0..<count {
    stack = []
    let input = String(readLine()!)
    for s in input {
        if s == "(" {
            stack.append(s)
        } else if s == ")" {
            guard let pop = stack.last, pop == "(" else {
                stack.append(s)
                break
            }
            stack.removeLast()
        }
    }
    print(stack.isEmpty ? "YES" : "NO")
}

// 4949번, 균형잡힌 세상
var stack: [Character] = []

while true {
    let line = readLine()!
    if line == "." {
        break
    }
    stack = []
    for char in line {
        if char == "(" || char == "[" {
            stack.append(char)
        } else if char == ")" {
            guard let pop = stack.last, pop == "(" else {
                stack.append(char)
                break
            }
            stack.removeLast()
        } else if char == "]" {
            guard let pop = stack.last, pop == "[" else {
                stack.append(char)
                break
            }
            stack.removeLast()
        }
    }
    print(stack.isEmpty ? "yes" : "no")
}
