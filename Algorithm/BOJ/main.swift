//
//  main.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/01.
//

// 2004번, 조합 0의 개수
// 2, 5의 갯수를 비교
// Combination == permutations / factorial == n! / (n - r)! * r!

import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let N = input[0]
var M = input[1]

func get2(_ num: Int) -> Int {
    var count = 0
    var i = 2
    while num >= i {
        count += num/i
        i *= 2
    }
    return count
}

func get5(_ num: Int) -> Int {
    var count = 0
    var i = 5
    while num >= i {
        count += num/i
        i *= 5
    }
    return count
}

let a = get2(N) - (get2(M) + get2(N - M))
let b = get5(N) - (get5(M) + get5(N - M))

print(min(a, b))













































    

