//
//  Insertion Sort.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/04.
//

import Foundation

// 삽입정렬은 '각 숫자를 적절한 위치에 삽입하는' 알고리즘 방법'
// 앞에 있는 원소들이 이미 정렬되어 있다고 가정, 거의 정렬된 상태에서는 유리
// 필요할 때만 swap
// O(N^2)의 시간 복잡도 - 선택, 버블정렬 보다 효율

let notSortedArray = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]

func insertionSort(notSortedArray: [Int]) -> [Int] {
    var j = Int()
    var temp = Int()
    var array: [Int] = notSortedArray
    
    for i in 0 ..< array.count - 1 {
        j = i
        while ( j >= 0 && array[j] > array[j + 1]) {
            temp = array[j]
            array[j] = array[j + 1]
            array[j + 1] = temp
            j -= 1
        }
    }
    
    return array
}


func insertionSort(_ array: inout [Int]) {
    for stand in 1..<array.count {
        for index in stride(from: stand, to: 0, by: -1) {
            if array[index] < array[index - 1] {
                array.swapAt(index, index - 1)
            } else {
                break
            }
        }
    }
}

print(insertionSort(notSortedArray: notSortedArray))
