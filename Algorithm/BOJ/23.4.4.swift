//
//  23.4.4.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/04.
//

import Foundation

// 2738번, 행렬 덧셈

//let NM = readLine()!.split(separator: " ").map { Int($0)! }
//let N = NM[0]
//let M = NM[1]
//
//var A: [[Int]] = []
//var B: [[Int]] = []
//var result: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: M), count: N)
//
//for _ in stride(from: 1, through: N, by: 1) {
//  A.append(readLine()!.split(separator: " ").map { Int($0)! })
//}
//
//for _ in stride(from: 1, through: N, by: 1) {
//  B.append(readLine()!.split(separator: " ").map { Int($0)! })
//}
//
//for i in 0..<N {
//  for j in 0..<M {
//    result[i][j] = A[i][j] + B[i][j]
//  }
//}
//
//result.forEach {
//  print($0.map { "\($0)" }.joined(separator: " "))
//}

// 2566번, 최댓값
//var matrix = [[Int]](repeating: [Int](repeating: 0, count: 9), count: 9)
//
//var max: Int = 0
//var location: (Int, Int) = (0, 0)
//
//for i in 0..<9 {
//  matrix[i] = readLine()!.split(separator: " ").map { Int($0)! }
//}
//
//for i in 0..<9 {
//  for j in 0..<9 {
//    if matrix[i][j] >= max {
//      max = matrix[i][j]
//      location = (i + 1, j + 1)
//      break
//    }
//  }
//}
//
//print(max)
//print("\(location.0) \(location.1)")

// 10789번, 세로읽기

//var matrix = [[String]](repeating: [String](repeating: "", count: 15), count: 5)
//var result = ""
//
//for i in 0..<5 {
//  let input = Array(readLine()!.map{ String($0) })
//  matrix[i].replaceSubrange(0..<input.count, with: input)
//}
//
//for i in 0..<15 {
//  for j in 0..<5 {
//    if matrix[j][i] != "" {
//      result += matrix[j][i]
//    }
//  }
//}
//
//print(result)

// 2563번, 색종이
//
//let paparCount = Int(readLine()!)!
//var basepaper = [[Int]](repeating: [Int](repeating: 0, count: 100), count: 100)
//var result = 0
//
//for _ in 0..<paparCount {
//  let XY = readLine()!.split(separator: " ").map { Int($0)! }
//  let X = XY[0]
//  let Y = XY[1]
//  
//  for i in X..<X + 10 {
//    for j in Y..<Y + 10 {
//      basepaper[i][j] = 1
//    }
//  }
//}
//
//result = basepaper.flatMap{ $0 }.reduce(0){ $0 + $1 }
//print(result)

//2745번, 진법 변환
//let NB = readLine()!.split(separator: " ")
//let N = String(NB[0])
//let B = Int(NB[1])!
//
//var result = Int(N, radix: B)!
//print(result)

// 11005번, 진법 변환2
//let NB = readLine()!.split(separator: " ").map{ Int($0)! }
//let N = NB[0]
//let B = NB[1]
//var result = ""
//result = String(N, radix: B).uppercased()
//print(result)

// 2720번, 세탁소 사장 동혁
//
//let count = Int(readLine()!)!
//
//for _ in  0..<count {
//  let change = Int(readLine()!)!
//  let quarter = change / 25
//  let dime = (change % 25) / 10
//  let nickel = ((change % 25) % 10) / 5
//  let penny = (((change % 25) % 10) % 5) / 1
//  
//  print(quarter, dime, nickel, penny)
//}

// 2903번, 중앙 이동 알고리즘
//let N = Int(readLine()!)!
//
//print(pow(pow(2.0, N) + 1, 2))

// 2501번, 약수 구하기
//
//let NK = readLine()!.split(separator: " ").map{ Int($0)! }
//let N = NK[0]
//let K = NK[1]
//var result = [Int]()
//
//for i in 1...N {
//  if N % i == 0 {
//    result.append(i)
//  }
//}
//
//if result.count >= K {
//  print(result[K - 1])
//} else {
//  print(0)
//}

// 2501번, 약수 구하기

//while let input = Int(readLine()!) {
//  if input == -1 {
//    break
//  }
//  
//  var result = [Int]()
//  
//  for i in 1...input {
//    if input % i == 0 {
//      result.append(i)
//    }
//  }
//  
//  result.removeLast()
//  
//  if result.reduce(0, { $0 + $1 }) == input {
//    let arrStr = result.map{ String($0) }.joined(separator: " + ")
//    print("\(input) = \(arrStr)")
//  } else {
//    print("\(input) is NOT perfect.")
//  }
//}
