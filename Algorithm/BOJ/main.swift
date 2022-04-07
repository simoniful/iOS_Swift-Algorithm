//
//  main.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/01.
//

import Foundation

let inputValues = Int(readLine()!)!

var num = inputValues
var sum = 0
var i = 0

while true {
    i += 1
    sum = num / 10 + num % 10
    num = (num % 10) * 10 + sum % 10
    if inputValues == num {
        break
    }
}

print(i)













    

