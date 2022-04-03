//
//  22.4.1.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/01.
//

import Foundation

// 10869, 사칙연산
// Float, Double 고려, 자연수 출력
// (A / B).rounded(.towardZero)
// A.truncatingRemainder(dividingBy: B))
let inputValues = readLine()!.split(separator: " ").map { Int($0)! }
let A = inputValues[0]
let B = inputValues[1]

print(A + B)
print(A - B)
print(A * B)
print(A / B)
print(A % B)


// 10430, 나머지
// Float, Double 고려한다고 하면 위와 동일

let inputValues = readLine()!.split(separator: " ").map { Int($0)! }
let A = inputValues[0]
let B = inputValues[1]
let C = inputValues[2]

print((A + B) %. C)
print(((A % C) + (B % C)) % C)
print((A * B) % C)
print(((A % C) * (B % C)) % C)


// 2588 곱셈, 각 자릿수 구하기
// Foundation의 pow 사용 - 제곱수 10, 100, 1000 활용

let A = Int(readLine()!)!
let B = Int(readLine()!)!

// let hundredB = B % 1000 / 100
// let tenB = B % 100 / 10
// let oneB = B % 10 / 1

func seperator(inputNum: Int) -> [Int] {
    var seperatedArr = Array<Int>(repeating: 0, count: 3)
    for i in 0...2 {
          let currentDigit: Double = Double(3 - i)
          let seperatedNum = (inputNum % Int(pow(10.0, currentDigit))) / Int(pow(10.0, currentDigit - 1))
        seperatedArr[i] = seperatedNum
    }
    return seperatedArr
}

let seperatedB = seperator(inputNum: B)

print(seperatedB[2] * A)
print(seperatedB[1] * A)
print(seperatedB[0] * A)
print(B * A)

// 




