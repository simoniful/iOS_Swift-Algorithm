//
//  23.4.7.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/08.
//

import Foundation

// 2485번, 가로수

//let treeCount = Int(readLine()!)!
//var treePoints = [Int]()
//var distances = Set<Int>()
//
//func gcd(m: Int, n: Int) -> Int {
//  if n == 0 {
//    return m
//  }
//  return gcd(m: n, n: m % n)
//}
//
//for _ in 0..<treeCount {
//  let treePoint = Int(readLine()!)!
//  treePoints.append(treePoint)
//}
//
//treePoints.sort()
//
//var mid = 0
//
//for i in 0..<treeCount - 1 {
//  let distance = treePoints[i + 1] - treePoints[i]
//  mid = gcd(m: mid, n: distance)
//}
//
//let totalLength = treePoints.last! - treePoints.first!
//let totalCount = totalLength / mid
//let result = totalCount - treeCount + 1
//
//print(result)

// 1710번, 골드바흐 파티션
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//  var result = 0
//  let input = Int(readLine()!)!
//  let primeNums = sieveOfEratosthenes(num: input)
//
//  for i in stride(from: 2, through: input / 2, by: 1) {
//    if primeNums[i] == true {
//      if primeNums[input - i] == true {
//        result += 1
//      }
//    }
//  }
//
//  print(result)
//}
//
//func sieveOfEratosthenes(num: Int) -> Array<Bool> {
//  var check = Array(repeating: true, count: num + 1)
//  check[0] = false
//  check[1] = false
//
//  for i in 0..<Int(sqrt(Double(num)))+1 {
//    if check[i] == true {
//      var j = 2
//
//      while (i * j) <= num {
//        check[i * j] = false
//        j += 1
//      }
//    }
//  }
//  return check
//}

// 15439번, 베라의 패션
//let N = Int(readLine()!)!
//
//print(N * (N - 1))
//
// 11050번, 이항계수
//import Foundation
//
//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//
//func bino_coef(_ n: Int, _ k: Int) -> Int {
//    if k == 0 || n == k {
//        return 1
//    }
//    return bino_coef(n - 1, k) + bino_coef(n - 1, k - 1)
//}
//
//print(bino_coef(input[0], input[1]))

