//
//  23.4.6.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/07.
//

import Foundation

// 10815번, 숫자 카드

//let n = Int(readLine()!)!
//let numCards = readLine()!.split(separator: " ").map{ Int($0)! }
//let m = Int(readLine()!)!
//let targets = readLine()!.split(separator: " ").map{ Int($0)! }
//var result = [String]()
//
//let interSections = Set(numCards).intersection(Set(targets))
//targets.forEach {
//    if interSections.contains($0) {
//        result.append("1")
//    } else {
//        result.append("0")
//    }
//}
//
//print(result.joined(separator: " "))

// 14425번, 문자열 집합

//let NM = readLine()!.split(separator: " ").map { Int($0)! }
//let N = NM[0]
//let M = NM[1]
//var setS = Set<String>()
//var result = 0
//
//for _ in 0..<N {
//  let input = String(readLine()!)
//  setS.insert(input)
//}
//
//for _ in 0..<M {
//  let input = String(readLine()!)
//  if setS.contains(input) {
//    result += 1
//  }
//}
//
//print(result)

// 10816번, 숫자 카드 2
//let N = Int(readLine()!)!
//var numCards = readLine()!.split(separator: " ").map{ Int($0)! }
//let M = Int(readLine()!)!
//let targets = readLine()!.split(separator: " ").map{ Int($0)! }
//var result = [String]()
//var dict = [Int: Int]()
//
//numCards.sort()
//
//for i in numCards {
//  if dict.keys.contains(i) {
//    dict[i]! += 1
//  } else {
//    dict[i] = 1
//  }
//}
//
//for j in targets {
//  if dict.keys.contains(j) {
//    result.append(String(dict[j]!))
//  } else {
//    result.append("0")
//  }
//}
//
//print(result.joined(separator: " "))

// 13241번, 최소공배수

//func gcd(m: Int, n: Int) -> Int {
//  if n == 0 {
//    return m
//  }
//  return gcd(m: n, n: m % n)
//}
//
//let AB = readLine()!.split(separator: " ").map { Int($0)! }
//let A = AB[0]
//let B = AB[1]
//
//print(A * B / gcd(m: A, n: B))

// 1735번, 분수 합
//let AB = readLine()!.split(separator: " ").map { Int($0)! }
//let A = AB[0]
//let B = AB[1]
//let CD = readLine()!.split(separator: " ").map { Int($0)! }
//let C = CD[0]
//let D = CD[1]
//
//func gcd(m: Int, n: Int) -> Int {
//  if n == 0 {
//    return m
//  }
//  return gcd(m: n, n: m % n)
//}
//
//let bottom = B * D
//let top = A *  D + C * B
//
//let div = gcd(m: top, n: bottom)
//print(top / div, bottom / div)


// 4134번, 다음 소수
//import Foundation
//
//func isPrimeNumber(num: Int) -> Bool {
//    if num < 2 {
//        return false
//    }
//
//    for i in 2..<Int(sqrt(Double(num)) + 1) {
//        if num % i == 0 {
//            return false
//        }
//    }
//    return true
//}
//
//func solution() {
//    var num = Int(readLine()!)!
//    while !isPrimeNumber(num: num) {
//        num += 1
//    }
//    print(num)
//}
//
//let t = Int(readLine()!)!
//for _ in 0..<t { solution() }
