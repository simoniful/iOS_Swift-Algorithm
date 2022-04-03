//
//  22.4.2.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/02.
//

import Foundation

// 9498, 시험 성적
// enum case로 구분 가능하지 않을까?

let inputValues = Int(readLine()!)!

func gradeCalculator(_ inputNumber: Int) -> String {
    let rangeA = 90...100
    let rangeB = 80..<90
    let rangeC = 70..<80
    let rangeD = 60..<70
    
    if rangeA.contains(inputNumber) {
        return "A"
    } else if rangeB.contains(inputNumber) {
        return "B"
    } else if rangeC.contains(inputNumber) {
        return "C"
    } else if rangeD.contains(inputNumber){
        return "D"
    } else {
        return "F"
    }
}

print(gradeCalculator(inputValues))

// 2753, 윤년

let inputValues = Int(readLine()!)!

func leapYearChecker(_ inputYear: Int) -> Int {
    inputYear % 4 == 0 && (inputYear % 100 != 0 || inputYear % 400 == 0) ? 1 : 0
}

print(leapYearChecker(inputValues))

// 14681, 사분면 고르기

let A = Int(readLine()!)!
let B = Int(readLine()!)!

func quadrantChecker(_ inputX: Int, _ inputY: Int) -> Int {
    if inputX > 0 && inputY > 0 {
        return 1
    } else if inputX < 0 && inputY > 0 {
        return 2
    } else if inputX < 0 && inputY < 0 {
        return 3
    } else {
        return 4
    }
}

print(quadrantChecker(A, B))

// 2884, 알람 시계

let inputValues = readLine()!.split(separator: " ").map { Int($0)! }
let A = inputValues[0]
let B = inputValues[1]

func setAlarm(_ hour: Int, _ minute: Int) -> String {
    if hour == 0 {
        if minute < 45 {
            return "23 \(minute - 45 + 60)"
        } else {
            return "0 \(minute - 45)"
        }
    } else {
        if minute < 45 {
            return "\(hour - 1) \(minute - 45 + 60)"
        } else {
            return "\(hour) \(minute - 45)"
        }
    }
}

print(setAlarm(A, B))



