//
//  CountingSort.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/18.
//

import Foundation

// 계수 정렬
// 데이터의 범위 조건이 있는 한, 크기가 한정되어 있는 한 매우 빠른 알고리즘 수행 O(n)
// 크기를 기준으로 갯수를 세어 나가면서 정렬
// 전체 데이터의 크기 만큼 허용할 수 있는 배열을 구성해야하는 점

let input = [
    1, 3, 2, 4, 3, 2, 5, 3, 1, 2,
    3, 4, 4, 3, 5, 1, 2, 3, 5, 2,
    3, 1, 4, 3, 5, 1, 2, 1, 1, 1
]

func countingSort(_ input: [Int]) -> [Int] {
    var result : [Int] = []
    let max = input.max() ?? 0
    var count = Array(repeating: 0, count: max + 1)
    
    for i in 0..<input.count {
        count[input[i] - 1] += 1
    }
    
    for i in 0..<max {
        if count[i] != 0 {
            for _ in 0..<count[i] {
                result.append(i + 1)
            }
        }
    }
    return result
}

print(countingSort(input))


func countingSort(_ input: [Int]) -> [Int] {
    // 받은 데이터 중에서 가장 큰 녀석
    let maxElement = input.max() ?? 0
    // 가장 큰 녀석을 기준으로 0 ~ max 까지 크기를 가진 0으로 이루어진 배열 생성
    var countArray = [Int](repeating: 0, count: maxElement + 1)
    // 순회하면서 해당 인덱스의 count 값을 증가
    for element in input {
        countArray[element] += 1
    }
    // 각 요소 앞에 배치되는 요소의 수
    for index in 1 ..< countArray.count {
        let sum = countArray[index] + countArray[index - 1]
        countArray[index] = sum
    }
    var sortedArray = [Int](repeating: 0, count: input.count)
    for index in stride(from: input.count - 1, through: 0, by: -1) {
       let element = input[index]
       countArray[element] -= 1
       sortedArray[countArray[element]] = element
    }
    return sortedArray
}
