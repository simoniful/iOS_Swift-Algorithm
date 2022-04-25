//
//  CountingSort.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/18.
//

import Foundation

func countingSort(_ input: [Int]) -> [Int] {
    let maxElement = input.max() ?? 0
    
    var countArray = [Int](repeating: 0, count: maxElement + 1)
    
    for element in input {
        countArray[element] += 1
    }
    
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
