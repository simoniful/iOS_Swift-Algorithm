//
//  22.4.16.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/16.
//

import Foundation

//  9020번, 골드바흐의 추측

func getPrimeNumbers(_ num: Int) -> [Int] {
    var isPrime = [Bool](repeating: true, count: num + 1)
    isPrime[0] = false
    isPrime[1] = false
    
    for i in 2...num {
        if i * i > num {
            break
        }
        if isPrime[i] {
            for j in stride(from: i * i, through: num, by: i) {
                isPrime[j] = false
            }
        }
    }
    
    var primeNumber = [Int]()
    for i in 2...num {
        if isPrime[i] {
            primeNumber.append(i)
        }
    }
    return primeNumber
}

//while true {
//    let n = Int(readLine()!)!
//    if n == 0 {
//        break
//    }
//    let result = Set(getPrimeNumbers(2 * n)).subtracting(Set(getPrimeNumbers(n)))
//    print(result.count)
//}

let primeArr = getPrimeNumbers(10000)

let testcase = Int(readLine()!)!

for _ in 0..<testcase {
    let input = Int(readLine()!)!
    var num1 = input / 2
    var num2 = input / 2
    
    while true {
        if num1 + num2 == input {
            if primeArr.contains(num1) && primeArr.contains(num2) {
                print("\(num1) \(num2)")
                break
            }
        }
        num1 -= 1
        num2 += 1
    }
}

// 1085번, 직사각현에서 탈출

let inputValues = readLine()!.split(separator: " ").map { Int(String($0))! }

var distances: [Int] = []
let xZero = 0
let yZero = 0
let x = inputValues[0]
let y = inputValues[1]
let w = inputValues[2]
let h = inputValues[3]

distances.append(abs(w - x))
distances.append(abs(h - y))
distances.append(abs(xZero - x))
distances.append(abs(yZero - y))

print(distances.min()!)

// 3009번, 네번째 점

let firstDot = readLine()!.split(separator: " ").map { Int(String($0))! }
let secondDot = readLine()!.split(separator: " ").map { Int(String($0))! }
let thirdDot = readLine()!.split(separator: " ").map { Int(String($0))! }

var result: [Int] = []

for i in 0...1 {
    if firstDot[i] == secondDot[i] {
        result.append(thirdDot[i])
    } else if secondDot[i] == thirdDot[i] {
        result.append(firstDot[i])
    } else if thirdDot[i] == firstDot[i] {
        result.append(secondDot[i])
    }
}

print("\(result[0]) \(result[1])")

// 4153번, 직각삼각형
let length: [Int] = []

while true {
    let length = readLine()!.split(separator: " ").map { Int(String($0))! }
    if length == [0, 0, 0] {
        break
    }

    if Set(length).count == 1 {
        print("wrong")
    } else if Set(length).count == 2 {
        print("wrong")
    } else if Set(length).count == 3 {
        let max = Double(length.max()!)
        let min = Double(length.min()!)
        let mid = Double(length.filter{ $0 != Int(max) && $0 != Int(min) }[0])
        
        if pow(min, 2) + pow(mid, 2) == pow(max, 2) {
            print("right")
        } else {
            print("wrong")
        }
    }
}


// 3053번, 택시 기하학
// 우리가 평소에 아는 '거리' 라는 개념은 초록색(유클리드 기하학)과 같지만 ( D(T₁, T₂)² = (𝑥₁ - 𝑥₂)² + (y₁ - y₂)² )
// 택시기하학에서는 '거리'라는 개념을 새로 정의한 것이다. ( D(T₁, T₂) = |𝑥₁ - 𝑥₂| + |y₁ - y₂| )

let input = Double(readLine()!)!

print(pow(input, 2) * Double.pi)
print(pow(input, 2) * 2)
      
// 1002번, 터렛
// 원의 방정식

let testCount = Int(readLine()!)!

for _ in 0..<testCount {
    let inputValues = readLine()!.split(separator: " ").map{ Double($0)! }
    let d = (pow(inputValues[3] - inputValues[0], 2) + pow(inputValues[4] - inputValues[1], 2)).squareRoot()
      // 포함 / 먼 거리로 만나지 않는 경우
    if d > inputValues[2] + inputValues[5] || d < abs(inputValues[5] - inputValues[2]){
        print(0)
      // 겹쳐서 두 점에서 만나는 경우
    } else if abs(inputValues[5] - inputValues[2]) < d && d < inputValues[5] + inputValues[2] {
        print(2)
      // 원의 외접 / 내접
    } else if (abs(inputValues[5] - inputValues[2]) == d && d != 0 ) || d == inputValues[5] + inputValues[2] {
        print(1)
      // 두 원이 일치
    } else if d == 0 && abs(inputValues[5] - inputValues[2]) == 0 {
        print(-1)
    }
}

// 10872번, 팩토리얼

let num = Int(readLine()!)!

func calculate (num : Int) -> Int {
    if num == 0 {
        return 1
    }
    return num * calculate(num: num - 1)
}

print(calculate(num: num))

// 10870번, 피보나치수 5

func fibonacci(_ input: Int) -> Int {
    if input == 0 {
        return 0
    } else if input == 1 {
        return 1
    }
    var result = fibonacci(input - 1) + fibonacci(input - 2)
    return result
}

print(fibonacci(input))

// 2447번, 별 찍기 - 10

let input = Int(readLine()!)!

func printStar(_ input: Int, _ pattern: [String]) {
    if input == 1 {
        pattern.forEach { print($0) }
        return
    }
    
    let oneRow: [String] = pattern.map { $0 + $0 + $0 }
    let otherRow: [String] = pattern.map { $0 + String(repeating: " ", count: $0.count) + $0 }
    let newPattern = oneRow + otherRow + oneRow
    
    printStar(input / 3, newPattern)
}

printStar(input, ["*"])

print(getIndex(input))

// 11729번, 하노이의 탑 이동 순서
// 비어있는 곳으로 큰 판을 제외한 n - 1 개의 원판을 이동시키고
// 가장 큰 판을 목표로 하는 곳으로 이동하고
// 이동해둔 n - 1 개의 원판을 목표로 하는 곳으로 이동

let N = Int(readLine()!)!
var count = 0
var ans = ""

func find(x: Int, cur: Int,  to: Int, empty: Int  ) {
    if x == 1 {
        count += 1
        ans += "\(cur) \(to)\n"
        return
    }
    // 가장 큰 판을 제외한 나머지를 목표 위치가 아닌 곳으로 이동
    find(x: x - 1, cur: cur, to: empty, empty: to)
    ans += "\(cur) \(to)\n"
    count += 1
    // 가장 큰 판을 목표로 하는 곳에다 깔고, 나머지 정렬된 판들을 목표로 하는 곳으로 이동
    find(x: x - 1, cur: empty, to: to, empty: cur)
}

find(x: N, cur: 1, to: 3, empty: 2)
ans.removeLast()
print(count)
print(ans)

