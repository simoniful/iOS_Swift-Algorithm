//
//  22.4.18.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/18.
//

import Foundation

// 1018번, 체스판 다시 칠하기 - 다시 해볼 것 

// 1. 전체 체스판에서 8*8 크기의 체스판을 1칸씩 이동시키며 바꿔야하는 정사각형의 수를 확인
// 2. 행+열의 값에 따라 경우의 수를 나누어,
//  i) 흰색이라면 검은색으로 바꿔야 하는 수를 증가
//  ii) 검은색이라면 흰색으로 바꿔야 하는 수를 증가
// 3. 8*8 크기 동안 2번의 규칙에 따라 수를 증가시키고 가장 작은 값을 기억해 놓는다.

let size = readLine()!.split(separator: " ").map{Int($0)!}
let row = size.first!
let col = size.last!
var board = [[Character]](repeating: [Character](repeating: "B", count: col), count: row)
var answer = Int.max

for i in 0..<row {
    let cols = readLine()!
    
    for (j, value) in cols.enumerated() {
        board[i][j] = value
    }
}

// 모든 경우의 수 가능
for i in 0...row - 8 {
    for j in 0...col - 8 {
        var count = 0
        
        // 8 * 8 크기 고정 - 8x8의 고정된 정사각형을 먼저 자른 다음
        // 현재 행의 번호 i, 현재 열의 번호 j의 합이 짝수이면 시작점의 색깔과 같아야 하고,
        // 홀수이면 시작점의 색깔과 다른 색이어야 한다.
        
        for x in i..<i + 8 {
            for y in j..<j + 8 {
                if (x + y) % 2 == 0 {
                    if board[x][y] == "W" {
                        count += 1
                    }
                } else {
                    if board[x][y] == "B" {
                        count += 1
                    }
                }
            }
        }
        
        answer = min(answer, count)
        answer = min(answer, 64 - count)
    }
}

print(answer)

// 1436번, 영화감독 슘

let N = Int(readLine()!)!
var count = 0
var result = 665

while true {
    // result 변수를 1씩 더해가며 우리가 원하는 수를 찾가
    result += 1
    // 문자열로 변경해서 6이 3번연속 나오는지를 확인
    let resultChar = String(result)
    var resultCharCount = 0
    
    for char in resultChar {
        // "6"이 포함되어 있으면 resultCharCount를 1씩 올리고
        if char == "6" {
            resultCharCount += 1
        } else {
            resultCharCount = 0
        }
        // 연속으로 "6"이 3번 나온 경우, count를 1씩 올림 - index의 역할
        if resultCharCount == 3 {
            count += 1
        }
    }
    
    if N == count {
        print(result)
        break
    }
}

// 2750번, 수 정렬하기

var lines = [Int]()
let testCount = Int(readLine()!)!

for _ in 0..<testCount {
    let input = Int(readLine()!)!
    lines.append(input)
}

func selectedSort(_ array: inout [Int]) {
    for i in 0..<(array.count - 1) {
        var minIndex = i
        for j in (i + 1)..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        array.swapAt(i, minIndex)
    }
}

selectedSort(&lines)
print(lines)

//  10989번, 수 정렬하기 3
final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}
let file = FileIO()

let N = file.readInt()
var dp = Array(repeating:0, count:10001)
for _ in 0..<N {
    let q = file.readInt()
    dp[q] += 1
}
var answer = ""
for i in 1...10000 {
    answer += String(repeating: "\(i)\n", count: dp[i])
}
print(answer)


