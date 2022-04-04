//
//  Quick Sort.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/04.
//

import Foundation

var data = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]
let number = data.count

func quickSort( data: inout [Int], start: Int, end: Int) {
    // 원소가 1개인 경우 그대로 두기
    if start >= end { return }
    
    // 피벗은 첫 번째 원소
    let pivot = start
    var i = start + 1
    var j = end
    var temp = Int()
    
    // 엇갈릴 때 까지 반복
    while i <= j {
        // 피벗 값 보다 큰 값을 만날 때까지
        while(i <= end && data[i] <= data[pivot]) {
            i += 1
        }
        
        // 피벗 값 보다 작은 값을 만날 때까지
        while(j > start && data[j] >= data[pivot]) {
            j -= 1
        }
        
        if i > j {
            // 엇갈린 상태일 경우 피벗 값과 교체
            temp = data[j]
            data[j] = data[pivot]
            data[pivot] = temp
            
        } else {
            // 엇갈린 상태가 아닐 경우 i와 j 교체
            temp = data[i]
            data[i] = data[j]
            data[j] = temp
        }
    }
    quickSort(data: &data, start: start, end: j - 1)
    quickSort(data: &data, start: j + 1, end: end)
    
    
}

quickSort(data: &data, start: 0, end: number - 1)
print(data)


func quickSort(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
 
    let pivot = first
    let left = array.filter { $0 < pivot }
    let right = array.filter { $0 > pivot }
    
    return quickSort(left) + [pivot] + quickSort(right)
}

print(quickSort(data))
