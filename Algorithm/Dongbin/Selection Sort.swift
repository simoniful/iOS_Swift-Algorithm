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

func selectionSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }  // 1

  var a = array                    // 2

  for x in 0 ..< a.count - 1 {     // 3

    var lowest = x
    for y in x + 1 ..< a.count {   // 4
      if a[y] < a[lowest] {
        lowest = y
      }
    }

    if x != lowest {               // 5
      a.swapAt(x, lowest)
    }
  }
  return a
}

