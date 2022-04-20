//
//  22.4.20.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/20.
//

import Foundation


// 5086번, 배수와 약수

while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    if input == [0, 0] {
        break
    }
    
    if input[1] % input[0] == 0 {
        print(" ㅍ")
    } else if input[0] % input[1] == 0 {
        print("multiple")
    } else {
        print("neither")
    }
}

// 1037번, 약수

let count = Int(readLine()!)!

let factors = readLine()!.split(separator: " ").map{ Int($0)! }

print(factors.min()! * factors.max()!)

// 2609번, 최대공약수와 최소공배수

// 최대공약수와 최소 공배수의 관계(LCM)
// 두 자연수 A, B의 최대공약수가 GCD, 최소공배수가 LCM
// A = a * G, B = b * G - a, b는 서로소이면
// LCM = a * b * GCD
// A * B = LCM * GCD

// 유클리드 호제법(GCD)
// 2개의 자연수(또는 정식) a, b에 대해서
// a를 b로 나눈 나머지를 r이라 하면(단, a > b),
// a와 b의 최대공약수는 b와 r의 최대공약수와 같다.

let nums = readLine()!.split(separator: " ").map{ Int($0)! }

func lcm(_ m: Int, _ n: Int) -> Int {
    return m * n / gcd(m, n)
}

func gcd(_ m: Int, _ n: Int) -> Int {
    var a = 0
    var b = max(m, n)
    var r = min(m, n)
    while r != 0 {
        a = b
        b = r
        r = a % b
    }
    return b
    
//    if n == 0 {
//        return m
//    } else {
//        return gcd(n, m % n)
//    }
}

print(gcd(nums[0], nums[1]))
print(lcm(nums[0], nums[1]))

// 1934번, 최소공배수

let testCast = Int(readLine()!)!

func lcm(_ m: Int, _ n: Int) -> Int {
    return m * n / gcd(m, n)
}

func gcd(_ m: Int, _ n: Int) -> Int {
    if n == 0 {
        return m
    } else {
        return gcd(n, m % n)
    }
}

for _ in 0..<testCast {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    print(lcm(input[0], input[1]))
}

// 2981번, 검문
// 시간초과 - 브루트 포스
// 인접한 차수의 최대공약수의 약수

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

// 정렬
result.sort()
// 1 제거
result.removeFirst()

print(result.map{ String($0) }.joined(separator: " "))
