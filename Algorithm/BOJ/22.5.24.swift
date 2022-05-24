//
//  22.5.24.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/05/24.
//

import Foundation

// 17478번, 재귀함수가 뭔가요?

let n = Int(readLine()!)!

func recursive(_ m: Int) {
    print(String(repeating: "_", count: 4 * (n - m)) + "\"재귀함수가 뭔가요?\"")

    if m == 0 {
        print(String(repeating: "_", count: 4 * (n - m)) + "\"재귀함수는 자기 자신을 호출하는 함수라네\"")
        print(String(repeating: "_", count: 4 * (n - m)) + "라고 답변하였지.")
        return
    }
    
    print(String(repeating: "_", count: 4 * (n - m)) + "\"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.")
    print(String(repeating: "_", count: 4 * (n - m)) + "마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.")
    print(String(repeating: "_", count: 4 * (n - m)) + "그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.\"")
    
    recursive(m - 1)
    print(String(repeating: "_", count: 4 * (n - m)) + "라고 답변하였지.")
}

print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")
recursive(n)

// 10815번, 숫자 카드

let n = Int(readLine()!)!
let numCards = readLine()!.split(separator: " ").map{ Int($0)! }
let m = Int(readLine()!)!
let targets = readLine()!.split(separator: " ").map{ Int($0)! }
var result = [String]()

let interSections = Set(numCards).intersection(Set(targets))
targets.forEach {
    if interSections.contains($0) {
        result.append("1")
    } else {
        result.append("0")
    }
}

print(result.joined(separator: " "))

// 14425번, 문자열 집합

let mn = readLine()!.split(separator: " ").map{ Int($0)! }
let m = mn[0]
let n = mn[1]

var setS = Set<String>()
var resultCount = 0

for _ in 0..<m {
    setS.insert(readLine()!)
}

for _ in 0..<n {
    if setS.contains(readLine()!) {
        resultCount += 1
    }
}

print(resultCount)

// 1620번, 나는야 포켓몬 마스터 이다솜
// 시간초과 - 딕셔너리 기반으로 풀변 완전 탐색 형태라 시간이 많이 걸림

let nm = readLine()!.split(separator: " ").map{ Int($0)! }
let n = nm[0]
let m = nm[1]
var pokemonDict = Dictionary<Int, String>()

for i in 1...n {
    pokemonDict[i] = readLine()!
}

for _ in 0..<m {
    let target = readLine()!
    if target.allSatisfy({ $0.isNumber }) {
        print(pokemonDict[Int(target)!] ?? "")
    } else {
        let value = pokemonDict.first { $0.1.contains(target) }
        print(value?.key ?? 0)
    }
}

// 1620번, 나는야 포켓몬 마스터 이다솜

let nm = readLine()!.split(separator: " ").map{ Int($0)! }
let n = nm[0]
let m = nm[1]

var intStr = Array(repeating: "", count: 100001)
var strInt = Dictionary<String, Int>()

for i in 1...n {
    let pokemon = readLine()!
    intStr[i] = pokemon
    strInt[pokemon] = i
}

for _ in 0..<m {
    let target = readLine()!
    let num = Int(target) ?? 0
    if num == 0 {
        print(strInt[target]!)
    } else {
        print(intStr[num])
    }
}

// 10816번, 숫자 카드 2
// 집합 기반 - 내부 검색 과정에서 for문이 반복되면서 시간초과

let n = Int(readLine()!)!
let numCards = readLine()!.split(separator: " ").map{ Int($0)! }
let m = Int(readLine()!)!
let targets = readLine()!.split(separator: " ").map{ Int($0)! }
var result = [String]()

let interSections = Set(numCards).intersection(Set(targets))

targets.forEach { target in
    if interSections.contains(target) {
        let count = numCards.filter { numCard in
            numCard == target
        }.count
        result.append(String(count))
    } else {
        result.append("0")
    }
}

print(result.joined(separator: " "))

// 10816번, 숫자 카드 2
// 딕셔너리 기반

let n = Int(readLine()!)!
var numCards = readLine()!.split(separator: " ").map{ Int($0)! }
let m = Int(readLine()!)!
let targets = readLine()!.split(separator: " ").map{ Int($0)! }
var result = [String]()

var dict = [Int: Int]()

numCards.sort()

for i in numCards {
    if dict.keys.contains(i) {
        dict[i]! += 1
    } else {
        dict[i] = 1
    }
}

for j in targets {
    if dict.keys.contains(j) {
        result.append(String(dict[j]!))
    } else {
        result.append("0")
    }
}

print(result.joined(separator: " "))

// 1764번, 듣보잡

let nm = readLine()!.split(separator: " ").map{ Int($0)! }
let n = nm[0]
let m = nm[1]

var setN = Set<String>()
var setM = Set<String>()

for _ in 0..<n {
    setN.insert(readLine()!)
}

for _ in 0..<m {
    setM.insert(readLine()!)
}

let intersections = Array(setN.intersection(setM)).sorted()

print(intersections.count)
intersections.forEach{ print($0) }


