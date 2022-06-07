//
//  22.5.31.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/05/31.
//

import Foundation

// 15649번, N과 M(1)

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]

var visited = Array(repeating: false, count: n + 1)
var depth = 0

var stack: [Int] = []

func result(depth: Int) {
    if depth == m {
        print(stack.map{String($0)}.joined(separator: " "))
        return
    } else {
        for i in 1...n {
            if !visited[i] {
                visited[i] = true
                stack.append(i)
                result(depth: depth + 1)
                visited[i] = false
                stack.removeLast()
            }
        }
    }
}

result(depth: depth)


// 15650번, N과 M (2)

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]

var visited = Array(repeating: false, count: n + 1)
var depth = 0

var stack: [Int] = []

func result(depth: Int) {
    if depth == m {
        if stack.sorted() == stack {
            print(stack.map{String($0)}.joined(separator: " "))
            return
        } else {
            return
        }
    }
    for i in 1...n {
        if !visited[i]{
            visited[i] = true
            stack.append(i)
            result(depth: depth + 1)
            visited[i] = false
            stack.removeLast()
        }
    }
}

result(depth: depth)

// 15651번, N과 M (3)
// DFS만 건드릴 경우 map에 의해서 시간초과 발생
// 문자열을 별도로 구성하여 추가하는 방식으로 통과 가능
// 브르투 포스로 풀기 가능

let arr = readLine()!.split(separator: " ").map{ Int(String($0))!}
let n = arr[0]
let m = arr[1]
var depth = 0
var result: [Int] = []
var str = ""

func dfs(_ depth: Int) {
    if depth == m {
        str += result.map{String($0)}.joined(separator: " ")
        str += "\n"
        return
    }
    for i in 1...n {
        result.append(i)
        dfs(depth + 1)
        result.removeLast()
    }

}
dfs(depth)
print(str)
