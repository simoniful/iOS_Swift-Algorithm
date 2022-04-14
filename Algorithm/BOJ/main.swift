//
//  main.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/01.
//


import Foundation

let inputValues = readLine()!.split(separator: " ").map{ Int($0)! }

let M = inputValues[0]
let N = inputValues[1]

var arr: [Int] = Array(repeating: 0, count: N + 1)
for i in 2...N {
    arr[i] = i
}

for j in 2...N {
    if arr[j] == 0 {continue}
    for k in stride(from: j + j, through: N, by: j) {
        arr[k] = 0
    }
}

for w in M...N {
    if arr[w] != 0 {
        print("\(arr[w])")
    }
}
























    

