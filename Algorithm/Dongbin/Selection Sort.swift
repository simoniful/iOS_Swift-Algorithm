//
//  Selection Sort.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/04.
//

import Foundation

// 선택정렬은 '가장 작은 원소를 앞으로 보내는' 알고리즘 방법
// 두 번의 For Loop를 사용하며 배열을 순회하며 min(최솟값)을 찾아서 그 값을 배열의 맨 앞으로 보내고 해당 값 이후의 인덱스부터 다시 최솟값을 찾아서 비교하며 정렬하게 됩니다.
// swap을 활용
// O(N^2)의 시간 복잡도

let notSortedArray = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]

func selectionSort(notSortedArray: [Int]) -> [Int] {
    var temp: Int
    var index: Int
    var array: [Int] = notSortedArray
    
    for i in 0 ..< notSortedArray.count {
        var min: Int = 9999
        for j in i ..< array.count {
            if (min > array[j]) {
                min =  array[j]
                index = j
            }
        }
        temp = array[i]
        array[i] = array[index]
        array[index] = temp
    }
    return array
}


func selectionSort(_ array: inout [Int]) {
    // 스캔 작업 반복
    for i in 0..<(array.count - 1) {
        var minIndex = i
        // 스캔 작업 (stand가 0이면 1번 index부터 마지막 Index까지 돌며 최소값을 찾아야 하니까)
        for j in (i + 1)..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        array.swapAt(i, minIndex)
    }
}


print(selectionSort(notSortedArray: notSortedArray))
