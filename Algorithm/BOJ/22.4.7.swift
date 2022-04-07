//
//  22.4.7.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/07.
//

import Foundation

// 2525, 오븐 시계
// 시간 몫, 나머지 활용

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let currentHour = firstLine[0]
let currentMinute = firstLine[1]
let needMinute = Int(readLine()!)!

func setAlarm(_ currentHour: Int, _ currentMinute: Int, _ needMinute: Int) -> String {
    if (currentMinute + needMinute) / 60 >= 1 {
        if currentHour + (currentMinute + needMinute) / 60 > 23 {
            return "\(currentHour + (currentMinute + needMinute) / 60 - 24) \((currentMinute + needMinute) % 60)"
        } else {
            return "\(currentHour + (currentMinute + needMinute) / 60) \((currentMinute + needMinute) % 60)"
        }
    } else {
        return "\(currentHour) \(currentMinute + needMinute)"
    }
}

print(setAlarm(currentHour, currentMinute, needMinute))

// 2480, 주사위 세개
// Set, 배열 원소 다루기

let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let firstDice = firstLine[0]
let secondDice = firstLine[1]
let thirdDice = firstLine[2]

func calculatePrice(_ firstDice: Int, _ secondDice:Int, _ thirdDice: Int) -> Int {
    var diceArr = firstLine
    if Set(diceArr).count == 1 {
        return 10000 + firstDice * 1000
    } else if Set(diceArr).count == 2 {
        Array(Set(diceArr)).forEach {
            if diceArr.contains($0) {
                diceArr.remove(at: diceArr.firstIndex(of: $0)!)
            }
        }
        return 1000 + diceArr[0] * 100
    } else if Set(diceArr).count == 3 {
        return diceArr.max()! * 100
    }
    return 0
}

print(calculatePrice(firstDice, secondDice, thirdDice))

// 10950, A + B - 3
var lines = [String]()
let N = Int(readLine()!)!
for _ in 0..<N { lines.append(readLine()!) }

for i in 0..<lines.count {
    let numArr = lines[i].split(separator: " ").map { Int($0)! }
    print ( numArr[0] + numArr[1] )
}

// 15552번, 빠른 A+B
// 리드라인 자체의 느린 단점을 다른 class를 구성하여 보완

import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        // 인덱스 범위 넘어가는 것 방지
        buffer = Array(try! fileHandle.readToEnd()!) + CollectionOfOne(0)
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        // 공백과 줄바꿈 무시
        while now == 10 || now == 32 { now = read() }
        
        // 음수 처리
        if now == 45{
            isPositive.toggle()
            now = read()
        }
        
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now - 48)
            now = read()
        }

        return sum * (isPositive ? 1 : -1)
    }
}

let fileIO = FileIO()
let n = fileIO.readInt()
for _ in 0..<n {
    print( fileIO.readInt() + fileIO.readInt() )
}

// 11021번, A + B - 7
// 입력 방식 변경

let repeatNum = Int(readLine()!)!

for i in stride(from: 1, through: repeatNum, by: 1) {
    let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
    
    print("Case #\(i): \(inputArr[0] + inputArr[1])")
}

// 2438번, 별 찍기 - 1
// repeating
let inputValue = Int(readLine()!)!

for i in 1...inputValue {
    let str = String(repeating: "*", count: i)
    print(str)
}

// 10871번, X보다 작은 수
// 고차함수 활용
let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let N = firstLine[0]
let X = firstLine[1]

let secondLine = readLine()!.split(separator: " ").map { Int($0)! }

let filtered = secondLine.filter { $0 < X }.map { String($0) }
print(filtered.joined(separator: " "))

// 10952번, A + B - 5
// 조건부 순회 EOF

let max = Int.max

for _ in 0...max {
    let inputValues = readLine()!.split(separator: " ").map { Int($0)! }
    if inputValues[0] + inputValues[1] != 0 {
        print(inputValues[0] + inputValues[1])
    } else { break }
}

// 10951번, A + B - 4
// 여러 줄의 값이 들어왔을 때 EOF

while let input = readLine(){
    print(input.split(separator: " ").map{ Int($0)! }.reduce(0, +))
}



