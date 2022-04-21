//
//  22.4.21.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/21.
//

import Foundation

// 11050번, 이항 계수 1
// 재귀, 빠른 Combination
// 기존의 permutations / factorial 공식은 실제 알고리즘에서 사용하기 어려움 

let input = readLine()!.split(separator: " ").map{ Int($0)! }

func bino_coef(_ n: Int, _ k: Int) -> Int {
    if k == 0 || n == k {
        return 1
    }
    return bino_coef(n - 1, k) + bino_coef(n - 1, k - 1)
}

func combinations(_ n: Int, choose k: Int) -> Int {
  return permutations(n, k) / factorial(k)
}

print(bino_coef(input[0], input[1]))


// 11051번, 이항 계수2
// 큰 수를 Combination - 정석적인 방법

let input = readLine()!.split(separator: " ").map{ Int($0)! }

func binomialCoefficient(_ n: Int, choose k: Int) -> Int {
  var bc = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)

  for i in 0...n {
    bc[i][0] = 1
    bc[i][i] = 1
  }

  if n > 0 {
    for i in 1...n {
      for j in 1..<i {
        bc[i][j] = (bc[i - 1][j - 1] + bc[i - 1][j]) % 10007
      }
    }
  }
  return bc[n][k]
}

print(binomialCoefficient(input[0], choose: input[1]))

// 1010번, 다리 놓기
// 시간제한 0.5s

let testCase = Int(readLine()!)!

func quickBinoCoef(_ n: Int, choose k: Int) -> Int {
  var result = 1
  for i in 0..<k {
    result *= (n - i)
    result /= (i + 1)
  }
  return result
}

for _ in 0..<testCase {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    print(quickBinoCoef(input[1], choose: input[0]))
}

// 1676번, 팩토리얼 0의 개수
// 큰 수는 생각하지 않고 푸는 방법

let input = Int(readLine()!)!

func factorial(_ num: Int) -> Int {
    if num <= 1 {
        return 1
    }
    return (num * factorial(num - 1))
}

let reversedStr = Array(String(factorial(500)).reversed())

print(reversedStr.firstIndex { el in el != "0"} ?? 0)

// 0이 붙으려면 10을 곱해야한다.
// 소인수 분해하면 2, 5
// 2는 무진장 많으니 5의 갯수를 기준으로

let N = Int(readLine()!)!
print(N / 5 + N / 25 + N / 125)


// 9375번, 패션왕 신혜빈

let testCase = Int(readLine()!)!
var results = Array(repeating: 1, count: testCase)
for i in 0..<testCase {
    let n = Int(readLine()!)!
    var wears: [String:Int] = [:]
    // 딕셔너리 구성
    for _ in 0..<n {
        let read = readLine()!.split(separator: " ")
        if wears[String(read.last!)] == nil {
            wears.updateValue(1, forKey: String(read.last!))
        } else {
            wears[String(read.last!)]! += 1
        }
    }
    // 각 의상을 순회하면서 첫번째 입을 옷의 경우 * 두번째 경우 - 모든 것을 안입는 경우(1)
    for wear in wears {
        results[i] *= (wear.value + 1)
    }
    results[i] -= 1
}

for result in results {
    print(result)
}

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
