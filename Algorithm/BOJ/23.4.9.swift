//
//  23.4.9.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/10.
//

import Foundation

// 25192번, 인사성 밝은 곰곰이

//let chatCount = Int(readLine()!)!
//var names: Set<String> = []
//var useCount = 0
//
//for _ in 0..<chatCount {
//  let input = String(readLine()!)
//
//  if input == "ENTER" {
//    names.removeAll()
//    continue
//  }
//
//  useCount += names.contains(input) ? 0 : 1
//  names.insert(input)
//}
//
//print(useCount)

// 26069번, 붙임성 좋은 총총이

//let N = Int(readLine()!)!
//var dance: Set<String> = ["ChongChong"]
//
//for _ in 0..<N {
//  let names = readLine()!.split(separator: " ").map { String($0) }
//  if dance.contains(names[0]) || dance.contains(names[1]) {
//    dance.insert(names[0])
//    dance.insert(names[1])
//  }
//}
//
//print(dance.count)

// 20920번, 영단어 암기는 괴로워
//let NM = readLine()!.split(separator: " ").map { Int($0)! }
//let N = NM[0]
//let M = NM[1]
//
//var words = [String: Int]()
//
//for _ in 0..<N {
//  let input = String(readLine()!)
//
//  if input.count < M {
//    continue
//  }
//
//  words[input, default: 0] += 1
//}
//
//let sortedWords = words.sorted {
//  if $0.value == $1.value {
//    if $0.key.count == $1.key.count {
//      return $0.key < $1.key
//    }
//    return $0.key.count > $1.key.count
//  }
//  return $0.value > $1.value
//}
//
//sortedWords.forEach {
//  print($0.key)
//}
