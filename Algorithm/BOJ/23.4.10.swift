//
//  23.4.10.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/11.
//

import Foundation

// 팩토리얼2
//let input = Int(readLine()!)!
//
//func factorial(num: Int) -> Int {
//  if num == 0 {
//    return 1
//  }
//  return num * factorial(num: num - 1)
//}
//
//print(factorial(num: input))

// 10870번, 피보나치 수5
//let input = Int(readLine()!)!
//
//func fibonacci(num: Int) -> Int {
//  if num == 0 {
//    return 0
//  }
//
//  if num == 1 {
//    return 1
//  }
//
//  return fibonacci(num: num - 1) + fibonacci(num: num - 2)
//}
//
//print(fibonacci(num: input))

// 25501번, 재귀의 귀재
//let testcase = Int(readLine()!)!
//
//for _ in 0..<testcase {
//  var count = 0
//  let str = Array(readLine()!)
//
//  func recursion(s: [Character], l: Int, r: Int) -> Int {
//    count += 1
//    if l >= r {
//      return 1
//    } else if s[l] != s[r] {
//      return 0
//    } else {
//      return recursion(s: s, l: l + 1, r: r - 1)
//    }
//  }
//
//  func isPalindrome(s: [Character]) -> Int {
//    return recursion(s: s, l: 0, r: s.count - 1)
//  }
//
//  print("\(isPalindrome(s: str)) \(count)")
//}

// 24060번, 알고리즘 수업 - 병합정렬
//let NK = readLine()!.split(separator: " ").map{ Int($0)! }
//let N = NK[0]
//let K = NK[1]
//var numArray = readLine()!.split(separator: " ").map{ Int($0)! }
//var result = [Int]()
//var count = 0
//var answer = -1
//
//func mergeSort(_ array: [Int], _ start: Int, _ end: Int) {
//    if array.count <= 1 { return }
//    if start < end && count < K {
//        let center = (start + end) / 2
//        mergeSort(array, start, center)
//        mergeSort(array, center + 1, end)
//        merge(start, center, end)
//    }
//}
//
//func merge(_ start: Int, _ center: Int, _ end: Int) {
//    var i = start
//    var j = center + 1
//    var t = 0
//    var temp = [Int]()
//
//    while i <= center && j <= end {
//        if numArray[i] <= numArray[j] {
//            temp.append(numArray[i])
//            i += 1
//        } else {
//            temp.append(numArray[j])
//            j += 1
//        }
//    }
//
//    while i <= center {
//        temp.append(numArray[i])
//        i += 1
//    }
//
//    while j <= end {
//        temp.append(numArray[j])
//        j += 1
//    }
//
//    i = start
//    while i <= end {
//        numArray[i] = temp[t]
//        count += 1
//        if count == K {
//            answer = temp[t]
//            break
//        }
//        i += 1
//        t += 1
//    }
//}
//
//mergeSort(numArray, 0, N - 1)
//print(answer)
