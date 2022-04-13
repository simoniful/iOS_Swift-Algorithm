//
//  22.4.13.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/13.
//

import Foundation

// 1316번, 그룹 단어 체커
// 1. 현재 문자가 이미 나온 적이 있고
// 2. 바로 이전 문자가 아니면
// -> 그 단어는 그룹 단어가 아니다.

let testCount = Int(readLine()!)!
var answer = 0

for _ in 0..<testCount {
    var checker: [Character] = []
    let word = readLine()!
    
    for char in word {
        if !checker.contains(char) {
            checker.append(char)
        } else if checker.last != char {
            checker.removeAll()
            break
        }
    }
    if checker.count != 0 { answer += 1}
}

print(answer)

// 1712번, 손익분기점
// 런타임 오류 계속 발생
// B와 C가 같은 경우 나눗셈 오류

let inputValues = readLine()!.split(separator: " ").map({ Int($0)! })

func getBreakEvenPoint (_ input: [Int]) {
    let A = input[0]
    let B = input[1]
    let C = input[2]
    
    if B >= C {
        print(-1)
    } else {
        print((A / (C - B)) + 1)
    }
}

getBreakEvenPoint(inputValues)

// 2292번, 벌집
// 등차급수

let input = Int(readLine()!)!

func getNums (_ input: Int) {
    var count = 1
    for i in 1...input {
        if input == 1 {
            print(1)
            break
        } else {
            count += 6 * i
            if input <= count {
                print(i + 1)
                break
            }
        }
    }
}

getNums(input)


// 1193 번, 분수 찾기

var input = Int(readLine()!)!
var count = 1

// 어떤 대각선의 몇 번째 인지 계산
while input > count {
    input -= count
    count += 1
}
// 왼쪽 오른쪽 어디에서 시작할지
if count % 2 != 0 {
    print("\(count - input + 1)/\(input)")
} else {
    print("\(input)/\(count - input + 1)")
}

// 2869번, 달팽이는 올라가고 싶다

let inputValues = readLine()!.split(separator: " ").map({ Int($0)! })

// 낮에 올라가는 거리
let A = inputValues[0]
// 밤에 미끄러지는 거리
let B = inputValues[1]
// 총 거리
let V = inputValues[2]

// 총 올라가야하는 거리는 정상에서 미끄러지지 않기에 V - B
// 하루에 올라가는 거리 A - B
let day = (V - B) / (A - B)

if (V - B) % (A - B) == 0 {
    print(day)
} else {
    print(day + 1)
}

// 10250번, ACM호텔

let T = Int(readLine()!)!
var lines = [[Int]]()
for _ in 0..<T { lines.append(readLine()!.split(separator: " ").map({ Int($0)! })) }

for i in 0..<T {
    // 호텔 층 수
    let H = lines[i][0]
    // 각 층 별 방의 수
    let W = lines[i][1]
    // 몇 번 째 손님
    let N = lines[i][2]
    
    
    let roomNum = N % H == 0 ? N / H : N / H + 1
    let floorNum = N % H == 0 ? H : N % H
    
    if roomNum < 10 {
        print("\(floorNum)0\(roomNum)")
    } else {
        print("\(floorNum)\(roomNum)")
    }
}

// 2775번, 부녀회장이 될테야
// 등차 급수

// 2차원 배열 구성
var apt = Array(repeating: Array(repeating: 1, count: 15), count: 15)
let T = Int(readLine()!)!

for i in 0..<T {
    // 층 수
    let k = Int(readLine()!)!
    // 호 수
    let n = Int(readLine()!)!
    
    // 0층 3호: 3
    // 1층 3호: 0층 1호 ~ 0층 3호 = 1 + 2 + 3 = 6
    // 2층 3호: 1층 1호 ~ 1층 3호 = (1) + (1 + 2) + (1 + 2 + 3) = 10
    // 3층 3호: 2층 1호 ~ 2층 3호 = (1) + ((1) + (1 + 2)) + ((1) + (1 + 2) + (1 + 2 + 3)) = 15
    // 21
    
    // 0층 4호: 4
    // 1층 4호: 10
    // 2층 4호: 20
    // 3층 4호: 35
    // 56
    
    for i in 1...n {
        apt[0][i] = i + 1
    }
    
    for j in 1...k {
        for k in 1...n {
            apt[j][k] = apt[j][k - 1] + apt[j - 1][k]
        }
    }
    
    print(apt[k][n - 1])
}

// 2839번, 설탕 배달
// while 문 안에서 조건에 계속 걸리도록

var N = Int(readLine()!)!
var count = 0

while true {
    if N % 5 == 0 {
        count += N / 5
        break
    }
    N = N - 3
    count +=  1
    
    if N < 0 {
        count = -1
        break
    }
}

print(count)

