//
//  23.4.3.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/03.
//

import Foundation

// 10810번, 공 넣기
//let NM = readLine()!.split(separator: " ").map{ Int($0)! }
//let N = NM[0]
//let M = NM[1]
//var result = Array(repeating: 0, count: N)
//
//for _ in stride(from: 1, through: M, by: 1) {
//  let ijk = readLine()!.split(separator: " ").map{ Int($0)! }
//  let i = ijk[0]
//  let j = ijk[1]
//  let k = ijk[2]
//
//  result.replaceSubrange((i - 1)...(j - 1), with: repeatElement(k, count: j - i + 1))
//}
//
//print(result.map { "\($0)" }.joined(separator: " "))
//
//

// 10813번, 공 바꾸기
//let NM = readLine()!.split(separator: " ").map{ Int($0)! }
//let N = NM[0]
//let M = NM[1]
//var result: [Int] = []
//
//for num in stride(from: 1, through: N, by: 1) {
//  result.append(num)
//}
//
//for _ in stride(from: 1, through: M, by: 1) {
//  let ij = readLine()!.split(separator: " ").map{ Int($0)! }
//  let i = ij[0]
//  let j = ij[1]
//  result.swapAt(i - 1, j - 1)
//}
//
//print(result.map { "\($0)" }.joined(separator: " "))

// 5597번, 과제 안 내신 분..?
//var result: [Int?] = []
//
//for i in stride(from: 1, through: 30, by: 1) {
//  result.append(i)
//}
//
//
//for _ in stride(from: 1, through: 28, by: 1) {
//  let completedOne = Int(readLine()!)!
//  result[completedOne - 1] = nil
//}
//
//print(result.compactMap{ $0 }[0])
//print(result.compactMap{ $0 }[1])

// 10811번, 바구니 뒤집기

//let NM = readLine()!.split(separator: " ").map{ Int($0)! }
//let N = NM[0]
//let M = NM[1]
//var result: [Int] = []
//
//for num in stride(from: 1, through: N, by: 1) {
//  result.append(num)
//}
//
//for _ in stride(from: 1, through: M, by: 1) {
//  let ij = readLine()!.split(separator: " ").map{ Int($0)! }
//  let i = ij[0]
//  let j = ij[1]
//
//  let temp = result[(i - 1)...(j - 1)]
//  result.replaceSubrange((i - 1)...(j - 1), with: temp.reversed())
//}
//
//print(result.map { "\($0)" }.joined(separator: " "))

// 11718번, 그대로 출력하기
//while let input = readLine() {
//    print(input)
//}

// 27866번, 문자와 문자열
//let S = readLine()!
//let i = Int(readLine()!)!
//
//print(S[S.index(S.startIndex, offsetBy: i - 1)])

// 27866번, 문자와 문자열
//let T = Int(readLine()!)!
//
//for _ in stride(from: 1, through: T, by: 1) {
//  let str = readLine()!
//  if let first = str.first, let last = str.last {
//    print("\(first)" + "\(last)")
//  }
//}

// 3003번, 킹, 퀸, 룩, 비숍, 나이트, 폰
//let comp = [1, 1, 2, 2, 2, 8]
//var result = Array(repeating: 0, count: 6)
//
//let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
//
//for i in stride(from: 0, through: 5, by: 1) {
//  result[i] = comp[i] - inputArr[i]
//}
//
//print(result.map{ "\($0)" }.joined(separator: " "))

// 2444번, 별 찍기 -7
//let N = Int(readLine()!)!
//
//for i in stride(from: 1, through: N - 1, by: 1) {
//  print(
//    String(repeating: " ", count: N - i) +
//    String(repeating: "*", count: 2 * i - 1)
//  )
//}
//print(String(repeating: "*", count: 2 * N - 1))
//
//for i in stride(from: 1, through: N - 1, by: 1) {
//  print(
//    String(repeating: " ", count: i) +
//    String(repeating: "*", count:  2 * (N - i) - 1)
//  )
//}

// 10812번, 바구니 순서 바꾸기
//let NM = readLine()!.split(separator: " ").map{ Int($0)! }
//let N = NM[0]
//let M = NM[1]
//var result: [Int] = [Int](0...N)
//
//for _ in stride(from: 1, through: M, by: 1) {
//  let ijk = readLine()!.split(separator: " ").map{ Int($0)! }
//  let i = ijk[0]
//  let j = ijk[1]
//  let k = ijk[2]
//  
//  let rotated = result[k...j] + result[i..<k]
//  result.replaceSubrange(i...j, with: rotated)
//}
//
//print(result[1...].map { "\($0)" }.joined(separator: " "))

// 25206번, 너의 평점은
//let dict: [String: Double] = [
//  "A+": 4.5,
//  "A0": 4.0,
//  "B+": 3.5,
//  "B0": 3.0,
//  "C+": 2.5,
//  "C0": 2.0,
//  "D+": 1.5,
//  "D0": 1.0,
//  "F": 0.0
//]
//
//var totalScore = 0.0
//var totalGrade = 0.0
//
//for _ in 0..<20 {
//  let inputArr = readLine()!.split(separator: " ").map{ String($0) }
//  let title = inputArr[0]
//  let score = Double(inputArr[1])!
//  let grade = inputArr[2]
//
//  if grade != "P" {
//    totalScore += score
//    totalGrade += score * dict[grade]!
//  }
//}
//
//print(totalGrade/totalScore)
