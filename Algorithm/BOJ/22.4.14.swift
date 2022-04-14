//
//  22.4.14.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/14.
//

import Foundation

// 10757번, 큰 A + B
// Int64가 넘는 큰 수에 대해서 문자열 기준으로 나누어 자리별 계산

// 1. 문자를 입력받고 공백 기준으로 나눈다.
let inputValues = readLine()!.split(separator: " ").map { String($0) }

// 2. 두 문자를 Array로 만들고 뒤집어준다.
var A = Array(inputValues[0].map{ String($0) }.reversed())
var B = Array(inputValues[1].map{ String($0) }.reversed())

// 3. 더 긴 문자가 있다면 뒤에 차이만큼 0을 추가해준다.
var isALong = A.count > B.count
let addZero = Array(repeating: "0", count: abs(A.count - B.count))

A = isALong ? A : A + addZero
B = isALong ? B + addZero : B

var one = 0
var answer: [String] = []
let count = isALong ? A.count : B.count

for i in 0..<count {
    // 4. for문으로 끝에서부터 두 숫자를 더해준다.
    let sum = Int(A[i])! + Int(B[i])! + one
    
    // 만약 더한 숫자가 10을 넘는다면 one에 저장하여 다음 숫자를 더할 때 더해준다.
    one = sum / 10
    
    // 그리고 가장 마지막 숫자는 10으로 나눈 것이 아닌 그대로 넣어준다.
    if  i == count - 1  {
        answer.append(String(sum))
    } else {
        answer.append(String(sum % 10))
    }
}

// 5. 정답을 뒤집고 문자로 만들어 출력한다.
print(Array(answer.reversed()).joined())

// 1978번, 소수찾기
// 에리토스테네스의 체, 소수 찾기 알고리즘

let testCount = Int(readLine()!)!
let inputValues = readLine()!.split(separator:" ").map{ Int($0)! }

//    func getPrimeNumbers(_ num: Int) -> [Int] {
//        var primeNumbers = [Int]()
//
//        outer: for i in 2..<num {
//            for j in 2..<i {
//                if i % j == 0 {
//                    continue outer
//                }
//            }
//            primeNumbers.append(i)
//        }
//
//        return primeNumbers
//    }

func getPrimeNumbers(_ num: Int) -> [Int] {
    var isPrime = [Bool](repeating: true, count: num + 1)
    isPrime[0] = false
    isPrime[1] = false
    
    for i in 2..<num {
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
    for i in 2..<num {
        if isPrime[i] {
            primeNumber.append(i)
        }
    }
    return primeNumber
}

let primeArr = getPrimeNumbers(1000)
let result = inputValues.filter { primeArr.contains($0) }
print(result.count)

// 2581번, 소수

let M = Int(readLine()!)!
let N = Int(readLine()!)!

func getPrimeNumbers(_ num: Int) -> [Int] {
    var primeNumbers = [Int]()

    outer: for i in 2..<num {
        for j in 2..<i {
            if i % j == 0 {
                continue outer
            }
        }
        primeNumbers.append(i)
    }
    return primeNumbers
}

let primeArr = getPrimeNumbers(10000)
let result = primeArr.filter { Array(M...N).contains($0) }

if result.count == 0 {
    print(-1)
} else {
    print(result.reduce(0, +))
    print(result.min()!)
}

// 11653번, 소인수 분해

var num = Int(readLine()!)!

// 2부터 주어진 값까지 하나씩 올라가면서 순회
for i in stride(from: 2, to: num, by: 1) {
    // 만약 그 중에서 나누어지는 값이 있으면 그 값으로 주어진 수를 나누고, 해당 나누어지는 수를 출력
    while num % i == 0 {
        print(i)
        num /= i
    }
}

// 최종적으로 나누어지지 않는 부분 출력
if num != 1 {
    print(num)
}

// 1929번, 소수 구하기
// 에리스토테네스의 체

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

