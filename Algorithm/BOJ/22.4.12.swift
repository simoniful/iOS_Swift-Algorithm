//
//  22.4.12.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/12.
//

import Foundation

// 11654번, 아스키 코드
// Character 구조체 내 unicodeScalars, askiiValue 활용

let inputValue = readLine()!

func getAskiiCode(_ char: String) -> UInt32 {
    let result = Character(char).unicodeScalars.first!.value
    return result
}

print(getAskiiCode(inputValue))


// 11720번, 숫자의 합
// Int 값이 너무 클경우 64, 32비트 활용 / 문자열 활용
// Character에서 쓸수 있는 여러가지 프로퍼티 확인

let firstline = readLine()!
let secondline = readLine()!

func getSumValue(_ count: String, _ num: String) -> Int {
    let seperatedNumArr = Array(num).map { $0.wholeNumberValue! }
    let result = seperatedNumArr.reduce(0, +)
    return result
}

print(getSumValue(firstline, secondline))

// 11720번, 알파벳 찾기
// 문자열의 문자 아스키 코드: 97 ~ 122
// 알파벳 셋 미리 설정 후 풀이

extension Character {
    var asciiIndex: Int {
        return Int(self.asciiValue!) - 97
    }
}

let firstline = readLine()!

func getCharIndex(_ str: String) -> String {
    var result = Array(repeating: -1, count: 26)
    
    Array(str).forEach { char in
        result[char.asciiIndex] = Array(str).firstIndex(of: char)!
    }
    
    return result.map { String($0) }.joined(separator: " ")
}

print(getCharIndex(firstline))

// 2675번, 문자열 반복

let testCount = Int(readLine()!)!
var lines = [[String]]()
for _ in 0..<testCount { lines.append(readLine()!.split(separator: " ").map({ String($0) })) }

func getDuplicatedString(_ testCount: Int, _ input: [[String]]) -> String {
    var result: String = ""
    
    for i in 0..<testCount {
        let ratio = Int(input[i][0])!
        let str = input[i][1]
        Array(str).forEach { char in
            result += String(repeating: char, count: ratio)
        }
        if i < testCount - 1 { result += "\n" }
    }
    
    return result
}

print(getDuplicatedString(testCount, lines))

// 1157번, 단어 공부
// ascii 코드 변환

extension Character {
    var asciiIndex: Int {
        return Int(self.asciiValue!) - 97
    }
}

let inputValue = readLine()!.lowercased()

func getMostUsedChar(_ input: String) -> String {
    var table = Array(repeating: 0, count: 26)
    
    Array(input).forEach { char in
        table[char.asciiIndex] += 1
    }
    
    if table.filter({ $0 == table.max() }).count != 1 {
        return "?"
    } else {
        let index = table.firstIndex(of: table.max()!)
        let result = String(UnicodeScalar(65 + index!)!)
        return result
    }
}

print(getMostUsedChar(inputValue))

// 2908번, 상수

let inputValues = readLine()!.split(separator: " ").map { String($0) }

func getHisAnswer(_ input: [String]) {
    let first = Int(String(input[0].reversed()))!
    let second = Int(String(input[1].reversed()))!
    
    print([first, second].max()!)
}

getHisAnswer(inputValues)

// 5622번, 다이얼
// 딕셔너리 활용

let dict = [
    "ABC": 3,
    "DEF": 4,
    "GHI": 5,
    "JKL": 6,
    "MNO": 7,
    "PQRS": 8,
    "TUV": 9,
    "WXYZ": 10
]

let inputValue = readLine()!

func getTimeForCall(_ input: String) -> Int {
    var result: Int = 0
    Array(input).forEach { char in
        let condition: ((String, Int)) -> Bool = {
            $0.0.contains(char)
        }
        if let time = dict.first(where: condition) {
            result += time.value
        }
    }
    return result
}

print(getTimeForCall(inputValue))

// 2941번, 크로아티아 알파벳
// 문자열 치환

let charArr = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

let inputValue = readLine()!

func getCharCount(_ input: String) -> Int {
    var temp = input
    charArr.forEach { str in
        temp = temp.replacingOccurrences(of: str, with: " ")
    }
    return temp.count
}

print(getCharCount(inputValue))


