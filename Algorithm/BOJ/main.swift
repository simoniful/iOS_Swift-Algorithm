import Foundation

// 2156번, 포도주 시식

//let N = Int(readLine()!)!
//var arr: [Int] = []
//var dp = Array(repeating: 0, count: 10001)
//arr.append(0)
//
//for _ in 1...N {
//  arr.append(Int(readLine()!)!)
//}
//
//dp[1] = arr[1]
//
//if N >= 2 {
//  dp[2] = arr[1] + arr[2]
//}
//
//for i in stride(from: 3, through: N, by: 1) {
//  dp[i] = max(dp[i - 2] + arr[i], dp[i - 3] + arr[i] + arr[i - 1], dp[i - 1])
//}
//
//print(dp[N])

// 11053번, 가장 긴 증가하는 부분 수열

let N = Int(readLine()!)!
var arr: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var dp = Array(repeating: 1, count: N)

for i in 1..<N {
  for j in 0..<i {
    if arr[i] > arr[j] {
      dp[i] = max(dp[i], dp[j] + 1)
    }
  }
}

print(dp.max()!)

