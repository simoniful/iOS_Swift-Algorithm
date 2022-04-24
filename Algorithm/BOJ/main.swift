//
//  main.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/01.
//

import Foundation

// 15649번, N과 M (1)
// 백 트래킹으로 다시 풀이 필요

let inputValue = readLine()!.split(separator: " ").map{ Int($0)! }
let N = inputValue[0]
let M = inputValue[1]

let arrN = [Int](1...N)

func permute(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    var visited = [Bool](repeating: false, count: nums.count)
    
    func permutation(_ nowPermute: [Int]) {
        if nowPermute.count == targetNum {
            result.append(nowPermute)
            return
        }
        for i in 0..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                permutation(nowPermute + [nums[i]])
                visited[i] = false
            }
        }
    }
    permutation([])
    
    return result
}

let result = permute(arrN, M).map{ $0.map{ String($0) }}

Array(Set(result)).forEach{ print($0.joined(separator: " ")) }
 










































    

