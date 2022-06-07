//
//  22.6.2.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/06/02.
//
import Foundation

// 15652번, N과 M (4)
// DFS로 접근했을 때 시간초과 발생

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var stack: [Int] = []
var depth = 0
var str = ""
func dfs(_ depth: Int){
    var isSatisfied: Bool = true
    if depth == m {
        for i in 0..<m {
            if i > 0, stack[i] < stack[i - 1] {
                isSatisfied = false
            }
        }
        if isSatisfied {
            str += "\(stack.map{String($0)}.joined(separator: " "))"
            str += "\n"
        }
        return
    }
    for i in 1...n {
        stack.append(i)
        dfs(depth + 1)
        stack.removeLast()
    }
}

dfs(depth)
print(str)

// 15652번, N과 M (4)
// 백 트레킹에 있어서 굳이 for를 2번 돌리지 않도록

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0]
let m = nm[1]
var result = ""

func dfs(currentValue: Int, count: Int, result: String) {
    if count == m {
        print(result)
        return
    }
    for num in currentValue...n {
        dfs(currentValue: num, count: count + 1, result: result + "\(num) ")
    }
}

dfs(currentValue: 1, count: 0, result: result)

