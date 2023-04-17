//
//  23.4.13.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2023/04/14.
//

import Foundation

// 14888번, 연산자 끼워넣기
//let N = Int(readLine()!)!
//
//let nums = readLine()!.split(separator: " ").map { Int($0)! }
//var operators = readLine()!.split(separator: " ").map { Int($0)! }
//
//var maxValue = Int.min
//var minValue = Int.max
//
//func backtracking(result: Int, depth: Int) {
//  if depth == N {
//    maxValue = max(maxValue, result)
//    minValue = min(minValue, result)
//    return
//  }
//
//  for i in 0..<4 {
//    if operators[i] < 1 {
//      continue
//    }
//
//    operators[i] -= 1
//
//    switch i {
//    case 0:
//      backtracking(result: result + nums[depth], depth: depth + 1)
//    case 1:
//      backtracking(result: result - nums[depth], depth: depth + 1)
//    case 2:
//      backtracking(result: result * nums[depth], depth: depth + 1)
//    case 3:
//      backtracking(result: result / nums[depth], depth: depth + 1)
//    default:
//      break
//    }
//
//    operators[i] += 1
//  }
//}
//
//backtracking(result: nums[0], depth: 1)
//print(maxValue)
//print(minValue)

// 14889번, 스타트와 링크
//struct Team {
//  let start: [Int]
//  let link: [Int]
//}
//
//let N = Int(readLine()!)!
//var graph = [[Int]]()
//var teams =  [Team]()
//
//for _ in 0..<N {
//  graph.append(readLine()!.split(separator: " ").map { Int($0)! })
//}
//
//var visited = [Bool](repeating: false, count: N)
//
//// 참여 인원을 절반씩 나누어 팀을 짜는 경우
//// 백트래킹을 통해 경우의 수에 따른 팀 생성
//func backtrackingTeam(index: Int, startTeam: [Int]) {
//  if startTeam.count == N / 2 {
//    let linkTeam = visited.enumerated().filter { !$0.element }.map { $0.offset }
//    teams.append(Team(start: startTeam, link: linkTeam))
//  }
//  
//  for i in index..<N {
//    if !visited[i] {
//      visited[i] = true
//      backtrackingTeam(index: i, startTeam: startTeam + [i])
//      visited[i] = false
//    }
//  }
//}
//
//backtrackingTeam(index: 0, startTeam: [])
//
//var answer = Int.max
//
//// 각각 팀을 순회하면서 점수 계산
//for team in teams {
//  var startScore = 0
//  var linkScore = 0
//  
//  for i in 0..<N / 2 - 1 {
//    for j in i + 1..<N / 2 {
//      startScore += graph[team.start[i]][team.start[j]]
//      startScore += graph[team.start[j]][team.start[i]]
//      linkScore += graph[team.link[i]][team.link[j]]
//      linkScore += graph[team.link[j]][team.link[i]]
//    }
//  }
//  
//  answer = min(answer, abs(startScore - linkScore))
//}
//
//print(answer)
