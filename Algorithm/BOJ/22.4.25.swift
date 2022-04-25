//
//  22.4.25.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/25.
//

import Foundation

// 2752번, 세수정렬
// 100만 이하의 작은 수라면 선택, 버블, 삽입 등 O(n^2) 모두 사용 가능
// 선택 정렬로 풀이

var inputValues = readLine()!.split(separator: " ").map{ Int($0)! }
var i = Int(), j = Int(), min = Int(), index = Int(), temp = Int()

for i in 0..<3 {
    min = 1000000 + 1
    for j in i..<3 {
        if min > inputValues[j] {
            min = inputValues[j]
            index = j
        }
    }
    temp = inputValues[i]
    inputValues[i] = inputValues[index]
    inputValues[index] = temp
}

let result = inputValues.map{ String($0) }.joined(separator: " ")
print(result)

var inputValues = readLine()!.split(separator: " ").map{ Int($0)! }

for i in 0..<inputValues.count - 1 {
    // i를 기준으로 하나 잡고
    var lowest = i
    // i 인덱스가 아닌 요소를 순회하면서 스캔
    // 나머지 배열에서 가장 작은 숫자 검색
    for j in i + 1 ..< inputValues.count {
        if inputValues[j] < inputValues[lowest] {
            lowest = j
        }
    }
    // 가장 작은 숫자를 현재 i와 인덱스 기준으로 위치 바꿈
    if i != lowest {
        inputValues.swapAt(i, lowest)
    }
}

let result = inputValues.map{ String($0) }.joined(separator: " ")
print(result)
