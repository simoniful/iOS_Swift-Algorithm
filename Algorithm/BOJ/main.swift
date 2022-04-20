//
//  main.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/01.
//
import Foundation

// 2981번, 검문
// 시간초과 - 브루트 포스
// 인접한 차수의 최대공약수의 공약수

let testCast = Int(readLine()!)!
var nums = [Int]()

func gcd(_ m: Int, _ n: Int) -> Int {
    if n == 0 {
        return m
    } else {
        return gcd(n, m % n)
    }
}

for _ in 0..<testCast {
    let input = Int(readLine()!)!
    nums.append(input)
}

nums.sort()

var bm = nums[1] - nums[0];

for i in 2..<testCast {
    bm = gcd(bm, nums[i] - nums[i - 1])
}

var result = [Int]()

// 효율적인 약수 구하기
for i in stride(from: 1, to: Int(sqrt(Double(bm))) + 1, by: 1) {
    if bm % Int(i) == 0 {
        result.append(i)
        if i * i != bm {
            result.append(bm / i)
        }
    }
}

result.sort()
result.removeFirst()

print(result.map{ String($0) }.joined(separator: " "))















































    

