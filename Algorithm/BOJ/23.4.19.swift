//
//  23.4.19.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/20.
//

import Foundation

// 10844번, 쉬운 계단 수
//
//let N = Int(readLine()!)!
//var dp = [[Int]](repeating: Array(repeating: 0, count: 10), count: N + 1)
//var sum = 0
//
//for i in 0...9 {
//  dp[1][i] = 1
//}
//
//if N > 1 {
//  for i in 2...N {
//    for j in 0...9 {
//      if j == 0 {
//        dp[i][0] = dp[i - 1][1] % 1000000000
//      } else if j == 9 {
//        dp[i][9] = dp[i - 1][8] % 1000000000
//      } else {
//        dp[i][j] = (dp[i - 1][j - 1] + dp[i - 1][j + 1]) % 1000000000
//      }
//    }
//  }
//}
//
//for i in 1...9 {
//  sum = (sum + dp[N][i]) % 1000000000
//}
//
//print(sum % 1000000000)
