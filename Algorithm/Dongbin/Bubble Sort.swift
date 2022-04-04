//
//  Bubble Sort.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/04.
//

import Foundation
// 버블정렬은 '옆에 있는 값과 비교해서 더 작은 값을 반복적으로 앞으로 보내는' 알고리즘 방법'
// 한 번의 roop가 돌고 나면 가장 큰 값이 먼저 정렬
// 가장 비효율적인 정렬 알고리즘
// O(N^2)의 시간 복잡도

let notSortedArray = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]

func bubbleSort(notSortedArray: [Int]) -> [Int] {
    var temp = Int()
    var array: [Int] = notSortedArray
    
    for i in 0 ..< notSortedArray.count {
        for j in 0 ..< notSortedArray.count - 1 - i {
            if (array[j] > array[j + 1]) {
                temp =  array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
    
    return array
}


func bubbleSort(_ array: inout [Int]) {
    // 스캔 작업 반복
    for i in 0..<(array.count - 1) {
        var isSwap = false
        // 스캔 작업(인접 인덱스 비교 및 swap 반복) : (탐색하려는 요소의 갯수) - 1 => 탐색하려는 요소의 갯수는 스캔 횟수에 따라 차감됨(스캔 횟수만큼 정렬되어 있을테니)
        for j in 0..<((array.count - i) - 1) {
            if array[j] > array[j + 1] {
               array.swapAt(j, (j + 1))
                isSwap = true
            }
        }
        if isSwap == false { return }
    }
}


print(bubbleSort(notSortedArray: notSortedArray))

