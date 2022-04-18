//
//  22.4.18.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/18.
//

import Foundation

// 1018번, 체스판 다시 칠하기

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
        
        // 8 * 8 크기 고정
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
