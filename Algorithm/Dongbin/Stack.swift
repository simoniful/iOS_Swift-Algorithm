//
//  Stack.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/28.
//

import Foundation

// 스택: 택배 상하차, 큐: 은행 창구
//

public struct Stack<T> {
  fileprivate var array = [T]()

  public var isEmpty: Bool {
    return array.isEmpty
  }

  public var count: Int {
    return array.count
  }

  public mutating func push(_ element: T) {
    array.append(element)
  }

  public mutating func pop() -> T? {
    return array.popLast()
  }

  public var top: T? {
    return array.last
  }
}

var stack = Stack<Int>()
stack.push(1)


