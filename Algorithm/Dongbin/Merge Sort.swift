//
//  Merge Sort.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/25.
//

import Foundation

// 하나의 큰 문제를 두 개의 작은 문제로 분할한 뒤에 각자 계산하고 나중에 합치는 방법
// 분할 정복 기법으로 문제 해결
// 퀵 정렬과 동일하게 평균 O(N*logN)의 시간 복잡도
// 최악의 경우에도 평균 O(N*logN)의 시간 복잡도
// 너비 N * 높이 logN
// 기존의 데이터를 담을 추가적인 공간 배열이 필요하기에 메모리 활용이 비효율적 

// 정렬 배열은 반드시 전역 변수로 선언
var data = [7, 6, 5, 8, 3, 5, 9, 1]
var sorted = Array(repeating: 0, count: 8)
let number = 8

func merge(_ a: inout [Int], _ m: Int, _ middle: Int, _ n: Int) {
    var i = m
    var j = middle + 1
    var k = m
    
    // 작은 순서대로 배열에 삽입
    while i <= middle && j <= n {
        if a[i] <= a[j] {
            sorted[k] = a[i]
            i += 1
        } else {
            sorted[k] = a[j]
            j += 1
        }
        k += 1
    }
    
    // 남은 데이터도 삽입
    if i > middle {
        // i 가 먼저 종료 - 남은 j 값 삽입
        for t in j...n {
            sorted[k] = a[t]
            k += 1
        }
    } else {
        // j 가 먼저 종료 - 남은 i 값 삽입
        for t in i...middle {
            sorted[k] = a[t]
            k += 1
        }
    }
    
    // 정렬된 배열 실제 배열로 삽입
    for t in m...n {
        a[t] = sorted[t]
    }
}

// 재귀로 구성
func mergeSort(_ a: inout [Int], _ m: Int, _ n: Int) {
    // 크기가 1보다 큰 경우
    if m < n {
        let middle = (m + n) / 2
        mergeSort(&a, m, middle)
        mergeSort(&a, middle + 1, n)
        merge(&a, m, middle, n)
    }
}

mergeSort(&data, 0, number - 1)
print(data)

func mergeSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }    // 1
  let middleIndex = array.count / 2              // 2
  let leftArray = mergeSort(Array(array[0..<middleIndex]))             // 3
  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))  // 4
    return merge(leftArray, rightArray)             // 5
}

func merge(_ left: [Int],_ right: [Int]) -> [Int] {
    var left = left
    var right = right
    var result: [Int] = []
    
    while !left.isEmpty && !right.isEmpty {
        if left[0] < right[0] {
            result.append(left.removeFirst())
        } else {
            result.append(right.removeFirst())
        }
    }
    
    // 왼쪽 배열의 요소가 남은 경우
    if !left.isEmpty {
        result.append(contentsOf: left)
    }
    
    // 오른쪽 배열의 요소가 남은 경우
    if !right.isEmpty {
        result.append(contentsOf: right)
    }
    return result
}

