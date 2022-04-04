//
//  Recursion.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/04.
//

import Foundation


//  func recursiveCall(입력) -> 출력 {
//      if 입력 <= 일정 값 {                     // 탈출 조건 명시
//          return 일정값 또는 입력값 또는 특정값
//      }
//      return recursiveCall(입력보다 작은 값)
//  }


func factorial(_ num: Int) -> Int {
    if num <= 1 {
        return 1
    }
    return (num * factorial(num - 1))
}

