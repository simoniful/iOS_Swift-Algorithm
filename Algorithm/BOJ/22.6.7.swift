//
//  22.6.7.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/06/07.
//

import Foundation

// 9663번, N-Queen

let n = Int(readLine()!)!

var map: [[Bool]] = Array(repeating: Array(repeating: true, count: n), count: n)
var result = 0

dfs(map, 0, -3, &result)
print(result)

func setDisable(_ map: [[Bool]] ,_ x: Int, _ y: Int) -> [[Bool]] {
    var size = 0
    var map = map

    for i in y ..< n {
        if map[i][x] {
            map[i][x] = false
        }
    }

    while !(y - size <= 0 && y + size >= n) {
        if x - size >= 0 {
            if y + size < n {
                if map[y + size][x - size] {
                    map[y + size][x - size] = false
                }
            }
        }

        if x + size < n {
            if y + size < n {
                if map[y + size][x + size] {
                    map[y + size][x + size] = false
                }
            }
        }

        size += 1
    }
    return map
}


func dfs(_ map: [[Bool]], _ depth: Int, _ beforeIndex: Int, _ result: inout Int) {
    if depth == n {
        result += 1
        return
    }
    
    for i in 0..<n {
        if (beforeIndex - 1)...(beforeIndex + 1) ~= i {
            continue
        } else {
            if map[depth][i] {
                let newMap = setDisable(map, i, depth)
                dfs(newMap, depth + 1, i, &result)
            }
        }
    }
}
