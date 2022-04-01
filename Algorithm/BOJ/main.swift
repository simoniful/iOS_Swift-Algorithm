//
//  main.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/01.
//

import Foundation

let A = Int(readLine()!)!
let B = Int(readLine()!)!

let hundredB = B % 1000 / 100
let tenB = B % 100 / 10
let oneB = B % 10

func seperator(inputNum: Int) -> [I] {
    var seperatedArr = Array<Int>(repeating: 0, count: 3)
    for i in 0...2 {
          let currentDigit: Double = Double(3 - i)
          let seperatedNum = (inputNum % Int(pow(10.0, currentDigit))) / Int(pow(10.0, currentDigit - 1))
        seperatedArr[i] = seperatedNum
    }
    return seperatedArr
}

