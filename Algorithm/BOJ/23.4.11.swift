//
//  23.4.11.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/11.
//

import Foundation

// 4779번, 칸토어 집합
//func cantor(num: Double) -> String {
//  if num == 0 {
//    return "-"
//  }
//
//  let line = cantor(num: num - 1)
//  return line + String(repeating: " ", count: Int(pow(3, num - 1))) + line
//}
//
//while let input = readLine(), let num = Double(input) {
//  print(cantor(num: num))
//}
//
//// 2447번, 별 찍기 - 10
//let input = Int(readLine()!)!
//
//func printStar(_ input: Int, _ pattern: [String]) {
//    if input == 1 {
//        pattern.forEach { print($0) }
//        return
//    }
//
//    let oneRow: [String] = pattern.map { $0 + $0 + $0 }
//    let otherRow: [String] = pattern.map { $0 + String(repeating: " ", count: $0.count) + $0 }
//    let newPattern = oneRow + otherRow + oneRow
//
//    printStar(input / 3, newPattern)
//}
//
//printStar(input, ["*"])
//
//// 11729번, 하노이의 탑
//let N = Int(readLine()!)!
//var count = pow(2, N) - 1
//print(count)
//
//func hanoi(plateCount: Int, start: Int, to: Int, via: Int) {
//  if plateCount == 1 {
//    print("\(start) \(to)")
//    return
//  }
//  // 가장 큰 판을 제외한 나머지를 목표 위치가 아닌 곳으로 이동
//  hanoi(plateCount: plateCount - 1, start: start, to: via, via: to)
//  // 가장 큰 판을 목표로 하는 곳에다 깔고
//  hanoi(plateCount: 1, start: start, to: to, via: via)
//  // 나머지 정렬된 판들을 목표로 하는 곳으로 이동
//  hanoi(plateCount: plateCount - 1, start: via, to: to, via: start)
//}
//
//hanoi(plateCount: N, start: 1, to: 3, via: 2)

// 15649번, N과 M(1)

//let NM = readLine()!.split(separator: " ").map { Int($0)! }
//// 주어지는 자연수의 갯수, ex. 3
//let N = NM[0]
//// 배열의 길이, ex. 2
//let M = NM[1]
//
//// 인덱스가 0부터 M - 1까지 M개, ex. [0 , 0]
//var array = [Int](repeating: 0, count: M)
//// 자연수의 사용여부, ex. [false, false, false, false]
//var isUsed = [Bool](repeating: false, count: N + 1)
//
//func backTracking(K: Int) {
//  // 배열의 길이인 M의 조건 충족인 경우 출력 종료
//  if K == M {
//    print(array.reduce(into: "", { $0 += "\($1) "}))
//    return
//  }
//
//  // 아닌 경우 자연수 1부터 순회하며 사용하지 않은 수를 확인
//  for i in 1...N {
//    if !(isUsed[i]) {
//      // 하나의 자연수가 선정되고 다시 백트래킹 재귀
//      isUsed[i] = true
//      array[K] = i
//      backTracking(K: K + 1)
//
//      // 모든 백트래킹이 종료되고 나서 초기화
//      // array[K]를 0으로 초기화 하지 않는 이유는 결국엔 값이 덮이기 때문
//      isUsed[i] = false
//    }
//  }
//}
//
//backTracking(K: 0)


// 15650번, N과 M(2)

//let NM = readLine()!.split(separator: " ").map { Int($0)! }
//let N = NM[0]
//let M = NM[1]
//
//var array = [Int]()
//var isUsed = [Bool](repeating: false, count: N + 1)
//
//func backTracking(K: Int) {
//  if K == M && array.sorted() == array {
//    print(array.reduce(into: "", { $0 += "\($1) "}))
//    return
//  }
//
//  for i in 1...N {
//    if !(isUsed[i]) {
//      isUsed[i] = true
//      array.append(i)
//      backTracking(K: K + 1)
//
//      isUsed[i] = false
//      array.popLast()
//    }
//  }
//}
//
//backTracking(K: 0)

// 15651번, N과 M(3)
//let NM = readLine()!.split(separator: " ").map { Int($0)! }
//let N = NM[0]
//let M = NM[1]
//var array = [Int]()
//var result = ""
//
//func backTracking(K: Int) {
//  if K == M {
//    result += array.reduce(into: "", { $0 += "\($1) "})
//    result += "\n"
//    return
//  }
//
//  for i in 1...N {
//    array.append(i)
//    backTracking(K: K + 1)
//    array.popLast()
//  }
//}
//
//backTracking(K: 0)
//print(result)

// 15652번, N과 M(4)
//let NM = readLine()!.split(separator: " ").map { Int($0)! }
//let N = NM[0]
//let M = NM[1]
//var array = [Int]()
//var result = ""
//
//func backTracking(K: Int) {
//  if array.count == M {
//    result += array.reduce(into: "", { $0 += "\($1) "})
//    result += "\n"
//    return
//  }
//
//  for i in K...N {
//    array.append(i)
//    backTracking(K: i)
//    array.popLast()
//  }
//}
//
//backTracking(K: 1)
//print(result)

// 9663번, N-Queen
//let N = Int(readLine()!)!
//var count = 0
//
//// 열에 대한 체크
//var isUsed1 = Array(repeating: false, count: N)
//// 오른 아래 대각선 체크
//var isUsed2 = Array(repeating: false, count: 2 * N - 1)
//// 왼 아래 대각선 체크
//var isUsed3 = Array(repeating: false, count: 2 * N - 1)
//
//func backTracking(current: Int) {
//  if current == N {
//    count += 1
//    return
//  }
//
//  for i in 0..<N {
//    if isUsed1[i] || isUsed2[current + i] || isUsed3[current - i + N - 1] {
//      continue
//    }
//
//    isUsed1[i] = true
//    isUsed2[current + i] = true
//    isUsed3[current - i + N - 1] = true
//
//    backTracking(current: current + 1)
//
//    isUsed1[i] = false
//    isUsed2[current + i] = false
//    isUsed3[current - i + N - 1] = false
//  }
//}
//
//backTracking(current: 0)
//print(count)




