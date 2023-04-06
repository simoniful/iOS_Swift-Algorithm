//
//  23.4.5.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/06.
//

import Foundation

// 27323번, 직사각형
//let A = Int(readLine()!)!
//let B = Int(readLine()!)!
//
//print(A * B)

// 15894번, 수학은 체육과목 입니다
//let input = Int(readLine()!)!
//
//print(4 * input)

// 9063번, 대지
//let N = Int(readLine()!)!
//var points: [(Int, Int)] = []
//var width = 0
//var height = 0
//
//for _ in 0..<N {
//  let input = readLine()!.split(separator: " ").map { Int($0)! }
//  points.append((input[0], input[1]))
//}
//
//width = points.map{ $0.0 }.max()! - points.map{ $0.0 }.min()!
//height = points.map{ $0.1 }.max()! - points.map{ $0.1 }.min()!
//
//print(width * height)

// 10101번, 삼각형 외우기
//var angles = [Int]()
//
//for _ in 0..<3 {
//  angles.append(Int(readLine()!)!)
//}
//
//if angles.reduce(0, {$0 + $1}) == 180 {
//  if angles[0] == angles[1] && angles[1] == angles [2] {
//    print("Equilateral")
//  } else if angles.sorted()[1] == angles.sorted()[2] {
//    print("Isosceles")
//  } else {
//    print("Scalene")
//  }
//} else {
//  print("Error")
//}

// 5073번, 삼각형과 세 변
//
//while let input = readLine()?.split(separator: " ").map({ Int($0)! }).sorted() {
//  if input[0] == 0 {
//    break
//  }
//
//  if input[2] >= input[0] + input[1] {
//    print("Invalid")
//  } else {
//    if input[0] == input[1] && input[1] == input[2] && input[2] == input[0] {
//      print("Equilateral")
//    } else if input[0] == input[1] || input[1] == input[2] || input[2] == input[0] {
//      print("Isosceles")
//    } else {
//      print("Scalene")
//    }
//  }
//}

// 14215번, 세 막대
//let input = readLine()!.split(separator: " ").map({ Int($0)! }).sorted()
//let a = input[0]
//let b = input[1]
//let c = input[2]
//
//if c >= a + b {
//  print(a + b + a + b - 1)
//} else {
//  print(a + b + c)
//}

// 24262번, 알고리즘 수업
// n 값이 어떤게 오더라도, 1번만 수행
// O(1)의 시간복잡도, 수행횟수

// 24263번, 알고리즘 수업2
// n 값이 오면 n의 횟수 만큼 루프
// O(n)의 시간복잡도, 수행횟수,
// Int(pow(Double(readLine()!)!, 2))

// 24265번, 알고리즘 수업4
// 7값이 오면 처음 루프에서 6 횟수 만큼 수행
// 내부 루프에서 6 + 5 + 4 + 3 + 2 + 1 만큼 = 21
// O(n^2)의 시간복잡도, 차수 2
// let input = Int(readLine()!)!
//
// print(input * (input - 1) / 2)

// 24266번, 알고리즘 수업5
// print(input * input * input)

// 24267번, 알고리즘 수업6
//i = 1
//j = 2 , k = 3, 4, 5, ... n  --> n - 2
//j = 3 , k = 4, 5, 6, ... n  --> n - 3
//...
//j = n - 1 k = n  --> 1
//
//i = 2
//j = 3 , k = 4, 5, 6, ... n  --> n - 3
//j = 4 , k = 5, 6, 7, ... n  --> n - 2

// n * (n - 1) * (n - 2) / 6

// 24313번, 알고리즘 수업7
// 모든 n ≥ n0에 대하여 f(n) ≤ c × g(n)인 양의 상수 c와 n0가 존재한다
// a1 * n + a0 <= c * n
// a0가 음수인 경우
// 예를들어,5n−2 ≤ 3n이고,
// n0=1 이라면? 1일 때, 만족 (3≤3)하지만,
// n0=2일 때는 만족하지 않습니다.(8≤6)
// 따라서 a1≤c1 이여야 한다
//
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let a1 = input[0], a0 = input[1]
//let c = Int(readLine()!)!
//let n = Int(readLine()!)!
//
//if a1 * n + a0 <= c * n && a1 <= c  {
//  print(1)
//} else {
//  print(0)
//}

// 2839번, 설탕 배달
//var sugar = Int(readLine()!)!
//var result = 0
//
//while true {
//  if sugar % 5 == 0 {
//    result += sugar / 5
//    print(result)
//    break
//  }
//
//  sugar -= 3
//  result += 1
//
//  if sugar < 0 {
//    print(-1)
//    break
//  }
//}

// 19532번, 수학은 비대면강의입니다
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let a = input[0]
//let b = input[1]
//let c = input[2]
//let d = input[3]
//let e = input[4]
//let f = input[5]
//
//var result: (Int, Int) = (0, 0)
//
//for x in -999...999 {
//  for y in -999...999 {
//    if a * x + b * y == c && d * x + e * y == f {
//      result = (x, y)
//      break
//    }
//  }
//}
//
//print("\(result.0) \(result.1)")

// 1003번, 피보나치 함수
//let T = Int(readLine()!)!
//var test: [Int] = []
//
//for _ in 0..<T {
//  test.append(Int(readLine()!)!)
//}
//
//var result: [(Int,Int)] = [(Int,Int)](repeating: (0,0), count: 41)
//result[0] = (1,0)
//result[1] = (0,1)
//
//for i in 2..<result.count{
//  result[i] = (result[i - 1].0 + result[i - 2].0, result[i - 1].1 + result[i - 2].1)
//}
//
//for num in test {
//  print("\(result[num].0) \(result[num].1)")
//}
//

// 1018번, 체스판 다시 칠하기
//
//let WB = [
//  Array("WBWBWBWB"),
//  Array("BWBWBWBW"),
//  Array("WBWBWBWB"),
//  Array("BWBWBWBW"),
//  Array("WBWBWBWB"),
//  Array("BWBWBWBW"),
//  Array("WBWBWBWB"),
//  Array("BWBWBWBW")
//]
//
//let BW = [
//  Array("BWBWBWBW"),
//  Array("WBWBWBWB"),
//  Array("BWBWBWBW"),
//  Array("WBWBWBWB"),
//  Array("BWBWBWBW"),
//  Array("WBWBWBWB"),
//  Array("BWBWBWBW"),
//  Array("WBWBWBWB")
//]
//
//var board: [[String]] = []
//var minValue = 999
//
//func compare(trow: Int,tcol:Int)-> Int{
//  var Wcount = 0
//  var Bcount = 0
//  for i in 0..<8{
//    for j in 0..<8{
//      if WB[i][j].description != board[trow + i][tcol + j] {
//        Wcount += 1
//      }
//      if BW[i][j].description != board[trow + i][tcol + j] {
//        Bcount += 1
//      }
//    }
//  }
//  if Wcount >= Bcount {
//    return Bcount
//  } else {
//    return Wcount
//  }
//}
//
//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//let n = input[0]
//let m = input[1]
//
//for _ in 0..<n {
//  board.append(readLine()!.map{ String($0)} )
//}
//
//for i in 0...(n - 8) {
//  for j in 0...(m - 8) {
//    minValue = min(compare(trow: i, tcol: j), minValue)
//  }
//}
//
//print(minValue)


// 1436번, 영화감독 숌
//let N = Int(readLine()!)!
//var count = 0
//var result = 665
//
//while true {
//  result += 1
//
//  let resultCharArr = String(result)
//  var resultChar6count = 0
//
//  for char in resultCharArr {
//    if char == "6" {
//      resultChar6count += 1
//    } else {
//      resultChar6count = 0
//    }
//
//    if resultChar6count == 3 {
//      count += 1
//    }
//  }
//
//  if N == count {
//    print(result)
//    break
//  }
//}

// 2587번, 대표값2
//var numArr = [Int]()
//
//for _ in 0..<5 {
//  numArr.append(Int(readLine()!)!)
//}
//
//let average = numArr.reduce(0, {$0 + $1}) / 5
//let mid = numArr.sorted()[2]
//
//print(average)
//print(mid)

// 25305번, 커트라인
//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//
//let N = input[0]
//let k = input[1]
//
//let arrX = readLine()!.split(separator: " ").map{ Int($0)! }
//
//let pride = arrX.sorted().dropFirst(N - k)
//print(pride.first!)

// 11478번, 서로 다른 부분 문자열의 개수
//
//let str = readLine()!.map{ $0 }
//var strings: Set<String> = []
//
//for i in 0..<str.count {
//    var string = ""
//    for j in i..<str.count {
//        string += String(str[j])
//        strings.insert(string)
//    }
//}
//
//print(strings.count)

// 7785번, 회사에 있는 사람
//let logsCount = Int(readLine()!)!
//var peoples: [String: Bool] = [:]
//
//for _ in 0..<logsCount {
//  let log = readLine()!
//  if log.suffix(5) == "enter" {
//    let name = String(log.dropLast(6))
//    peoples[name] = true
//  } else if log.suffix(5) == "leave" {
//    let name = String(log.dropLast(6))
//    peoples[name] = false
//  }
//}
//
//peoples.filter({ $0.value == true }).sorted(by: { $0.key > $1.key }).forEach {
//  print($0.key)
//}
