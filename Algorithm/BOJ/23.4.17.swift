//
//  23.4.17.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/18.
//

import Foundation

// 9461번, 파도반 수열
//let T = Int(readLine()!)!
//
//func dp(num: Int) -> Int {
//  var nums = [1, 1, 1, 2, 2]
//
//  if num < 6 {
//    return nums[num - 1]
//  } else {
//    for i in 6...num {
//      nums.append(nums[i - 6] + nums[i - 2])
//    }
//  }
//
//  return nums.last!
//}
//
//for _ in 0..<T {
//  let N = Int(readLine()!)!
//  print(dp(num: N))
//}

// 1912번, 연속합

//let n = Int(readLine()!)!
//let nums = readLine()!.split(separator: " ").map{Int(String($0))!}
//let maxValue = nums.max()!
//
//func dp() -> Int {
//  var result = 0
//  var now = 0
//
//  if maxValue < 0 {
//    return maxValue
//  }
//
//  for i in nums {
//    now += i
//    if now < 0 {
//      now = 0
//    }
//
//    if result < now {
//      result = now
//    }
//  }
//  return result
//}
//
//print(dp())

// 1149번, RGB거리

//let N = Int(readLine()!)!
//
//var rgbPrice = Array(repeating: [0, 0, 0], count: N + 1)
//
//for i in 1...N {
//  rgbPrice[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
//}
//
//var dp = Array(repeating: [0, 0, 0], count: N + 1)
//
//for i in 1...N {
//    dp[i][0] = min(dp[i - 1][1], dp[i - 1][2]) + rgbPrice[i][0]
//    dp[i][1] = min(dp[i - 1][0], dp[i - 1][2]) + rgbPrice[i][1]
//    dp[i][2] = min(dp[i - 1][0], dp[i - 1][1]) + rgbPrice[i][2]
//}
//
//print(dp[N].min()!)

// 1932번, 정수 삼각형
//let N = Int(readLine()!)!
//var triangle = [[Int]]()
//
//for _ in 0..<N {
//  triangle.append(readLine()!.split(separator: " ").map { Int(String($0))! })
//}
//
//for i in 1..<N {
//  for j in 0..<i + 1 {
//    if j == 0 {
//      triangle[i][j] += triangle[i - 1][j]
//    }
//    else if j == i {
//      triangle[i][j] += triangle[i - 1][j - 1]
//    }
//    else {
//      triangle[i][j] += max(triangle[i - 1][j], triangle[i - 1][j - 1])
//    }
//  }
//}
//
//print(triangle[N - 1].max()!)

// 2579번, 계단 오르기
// 바텀업
// 메모이제이션
//let N = Int(readLine()!)!
//var arr = [0]
//for _ in 0..<N {
//  arr.append(Int(readLine()!)!)
//}
//
//var dp = Array(repeating: 0, count: N + 1)
//
//for i in 1...N {
//  if i == 1 {
//    dp[1] = arr[1]
//  } else if i == 2 {
//    dp[2] = arr[1] + arr[2]
//  } else if i == 3 {
//    dp[3] = max(arr[1] + arr[3], arr[2] + arr[3])
//  } else {
//    dp[i] = max(arr[i] + arr[i - 1] + dp[i - 3], arr[i] + dp[i - 2])
//  }
//}
//
//print(dp[N])

// 1463번, 1로 만들기
// 바텀업
//let N = Int(readLine()!)!
//
//var dp = [Int](repeating: 0, count: N + 1)
//
//for i in 2..<N + 1 {
//  dp[i] = dp[i - 1] + 1
//
//  if i % 3 == 0 {
//    dp[i] = min(dp[i],  dp[i / 3] + 1)
//  }
//
//  if i % 2 == 0 {
//    dp[i] = min(dp[i],  dp[i / 2] + 1)
//  }
//}
//
//print(dp[N])


// 9095번, 1,2,3 더하기

//let N = Int(readLine()!)!
//var dp = Array(repeating: 0, count: 20)
//dp[0] = 0
//dp[1] = 1
//dp[2] = 2
//dp[3] = 4
//
//for i in 4..<11 {
//  dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3]
//}
//
//for _ in 0..<N {
//  let input = Int(readLine()!)!
//  print(dp[input])
//}
