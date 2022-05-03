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

// 17298번, 오큰수
// 시간초과
var result = [String]()
let testCase = Int(readLine()!)!
var stack = readLine()!.split(separator: " ").map{ Int($0)! }
stack = stack.reversed()

for _ in 0..<testCase {
    let pop = stack.popLast()
    let greater = stack.filter({ $0 > pop! })
    if greater.isEmpty {
        result.append("-1")
    } else {
        result.append(String(greater.last!))
    }
}

print(result.joined(separator: " "))

// 17298번, 오큰수

let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map({Int(String($0))!})
var stack = [Int]()

for i in 0..<n {
    // stack에 요소가 있고, 만약 nums[stack.last] 보다 현재의 값이 크다면 오큰수
    while !stack.isEmpty && nums[stack.last!] < nums[i] {
        // 그렇기에 'nums[stack.popLast()!] = 현재 값' 으로 설정하여,
        // stack에서 해당 자리 값을 제거하고,
        // popLast()로 반환 받을 현재 자리 값을 이용하여
        // nums 배열의 해당 위치에 오큰수를 넣어준다.
        let index = stack.popLast()!
        nums[index] = nums[i]
    }
    // stack이 비어있다면 제일 첫 원소이므로 stack에 현재 자리 값을 append
    stack.append(i)
}

// nums 배열에는 오큰수를 가지는 원소들만 오큰수로 값이 바뀌고
// stack에는 오큰수를 가지지 않는 원소들의 자리 값이 들어가 있다.
for i in stack {
    // 따라서 for문을 사용해서 nums에서 stack위치의 원소값을 -1로 바꾸면 된다.
    nums[i] = -1
}

print(nums.map{String($0)}.joined(separator: " "))
