//
//  23.4.16.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/17.
//

import Foundation

// 2580번, 스도쿠

//var board: [[Int]] = []
//for _ in 0..<9 {
//  board.append(readLine()!.split(separator: " ").map { Int($0)! })
//}
//
//var zeroCoord: [(Int, Int)] = []
//
//for y in 0..<9 {
//  for x in 0..<9 {
//    if board[y][x] == 0 {
//      zeroCoord.append((y, x))
//    }
//  }
//}
//
//func isValidRow(y: Int, num: Int) -> Bool {
//  return !board[y].contains(num)
//}
//
//func isValidColumn(x: Int, num: Int) -> Bool {
//  for i in 0..<9 {
//    if board[i][x] == num {
//      return false
//    }
//  }
//  return true
//}
//
//func isValidRect(y: Int, x: Int, num: Int) -> Bool {
//  let ny = y / 3 * 3
//  let nx = x / 3 * 3
//
//  for i in 0..<3 {
//    for j in 0..<3 {
//      if board[ny + i][nx + j] == num {
//        return false
//      }
//    }
//  }
//  return true
//}
//
//func backTracking(depth: Int) {
//  if depth == zeroCoord.count {
//    for y in 0..<9 {
//      for x in 0..<9 {
//        print(board[y][x], terminator: " ")
//      }
//    }
//    exit(0)
//  }
//  let y = zeroCoord[depth].0
//  let x = zeroCoord[depth].1
//  for i in 1...9 {
//    if isValidRow(y: y, num: i) && isValidColumn(x: x, num: i) && isValidRect(y: y, x: x, num: i) {
//      board[y][x] = i
//      backTracking(depth: depth + 1)
//      board[y][x] = 0
//    }
//  }
//}
//
//backTracking(depth: 0)


// 24416번, 알고리즘 수업 - 피보나치
//var fibCount = 0
//var fibonacciCount = 0
//
//func fib(num: Int) -> Int {
//  fibCount += 1
//  if num == 1 || num == 2 {
//    return 1
//  }
//  return fib(num: num - 1) + fib(num: num - 2)
//}
//
//func fibonacci(num: Int) -> Int {
//  var nums = [0, 1, 1]
//  for i in 3...num {
//    fibonacciCount += 1
//    nums.append(nums[i - 1] + nums[i - 2])
//  }
//  return nums.last!
//}
//
//print("\(fibonacci(num: 30)) \(fibonacciCount)")

// 9184번, 신나는 함수 실행
//var w = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: 1, count: 21), count: 21), count: 21)
//
//func f(_ a: Int, _ b: Int, _ c: Int) -> Int {
//  if a <= 0 || b <= 0 || c <= 0 {
//    return 1
//  }
//
//  if a > 20 || b > 20 || c > 20 {
//    return f(20, 20, 20)
//  }
//
//  if w[a][b][c] != 1 {
//          return w[a][b][c]
//      }
//
//  if a < b && b < c {
//    w[a][b][c] = f(a, b, c - 1) + f(a, b - 1, c - 1) - f(a, b - 1, c)
//            return w[a][b][c]
//  }
//
//  w[a][b][c] = f(a - 1, b, c) + f(a - 1, b - 1, c) + f(a - 1, b, c - 1) - f(a - 1, b - 1, c - 1)
//     return w[a][b][c]
//}
//
//while let input = readLine()?.split(separator: " ").map({ Int($0)! }), input != [-1 ,-1, -1] {
//    let a = input[0], b = input[1], c = input[2]
//    print("w(\(a), \(b), \(c)) =", f(a, b, c))
//}

// 1904번, 01타일
// n = 1 -> 1개
// n = 2 -> 2개
// n = 3 -> 3개
// n = 4 -> 5개
// n = 5 -> 8개

// let N = Int(readLine()!)!

//func dp(num: Int) -> Int {
//  var nums = [1, 2]
//  if num == 1 || num == 2 {
//    return nums[num - 1]
//  } else {
//    for i in 2..<num {
//      let new = (nums[i - 1] + nums[i - 2]) % 15746
//      nums.append(new)
//    }
//    return nums.last!
//  }
//}
//
//print(dp(num: N))


