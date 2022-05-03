//
//  22.5.3.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/05/03.
//

import Foundation

// 1874번, 스택 수열

let testCase = Int(readLine()!)!

var count = 1
var stack = [Int]()
var answer = [String]()

for _ in 0..<testCase {
    let num = Int(readLine()!)!

    while count <= num {
        stack.append(count)
        answer.append("+")
        count += 1
    }
    
    if stack.last == num {
        stack.popLast()
        answer.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

print(answer.joined(separator: "\n"))

// 18258번, 큐 2
// 시간초과

let testCount = Int(readLine()!)!
var commands = [String]()
for _ in 0..<testCount {
    commands.append(readLine()!)
}

var queue = [Int]()

for command in commands {
    if command.starts(with: "push") {
        let element = Int(command.split(separator: " ")[1])!
        queue.append(element)
    } else if command.starts(with: "pop") {
        if queue.isEmpty {
          print(-1)
        } else {
          let result = queue.removeFirst()
          print(result)
        }
    } else if command.starts(with: "size") {
        print(queue.count)
    } else if command.starts(with: "empty") {
        let result = queue.isEmpty ? 1 : 0
        print(result)
    } else if command.starts(with: "front") {
        let result = queue.first ?? -1
        print(result)
    } else if command.starts(with: "back") {
        let result = queue.last ?? -1
        print(result)
    }
}

// 18258번, 큐 2
// 빠른 입력 및 아스키 사용

final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
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

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readAskii() -> Int {
        var str = 0
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        while now != 10
                && now != 32
                && now != 0 {
            str += Int(now)
            now = read()
        }
        return str
    }
}

struct Queue {
    var left = [Int]()
    var right = [Int]()
    var count: Int { left.count + right.count }
    var isEmpty: Bool { left.isEmpty && right.isEmpty }
    var first: Int? {
        guard !isEmpty else { return -1 }
        return right.isEmpty ? left.first : right.last
    }
    
    var last: Int? {
        guard !isEmpty else { return -1 }
        return left.isEmpty ? right.first : left.last
    }
    
    mutating func enqueue(_ value: Int) {
        left.append(value)
    }
    
    mutating func dequeue() -> Int? {
        guard !isEmpty else { return -1 }
        if right.isEmpty {
            right = left.reversed()
            left.removeAll()
        }
        return right.popLast()
    }
}

let file = FileIO()
var q = Queue()
var res = ""

for _ in 0 ..< file.readInt() {
    let cmd = file.readAskii()
    // push
    if cmd == 448 {
        q.enqueue(file.readInt())
    }
    // pop
    else if cmd == 335 {
        res += q.isEmpty ? "-1\n" : "\(q.dequeue()!)\n"
    }
    
    // size
    else if cmd == 443 {
        res += "\(q.count)\n"
    }
    
    // empty
    else if cmd == 559 {
        res += q.isEmpty ? "1\n" : "0\n"
    }
    
    // front
    else if cmd == 553 {
        res += "\(q.first!)\n"
    }
    
    // back
    else if cmd == 401 {
        res += "\(q.last!)\n"
    }
}

print(res)


// 2164번, 카드 2

class Queue{
    var enqueue: [Int]
    var dequeue: [Int] = []
    var isEmpty: Bool{ return enqueue.isEmpty && dequeue.isEmpty }
    var count: Int{ return enqueue.count + dequeue.count }
    init(_ queue:[Int]){
        self.enqueue = queue
        
    }
    func push(_ n: Int){ enqueue.append(n) }
    func pop() -> Int? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
}


let testCase = Int(readLine()!)!

var queue: Queue = Queue(Array(1...testCase))

while true {
    if queue.count == 1 {
        break
    }
    let _ = queue.pop()
    if let swap = queue.pop() {
        queue.push(swap)
    }
}

print(queue.pop()!)

// 11866번, 요세푸스 문제 0

class Queue{
    var enqueue: [Int]
    var dequeue: [Int] = []
    var isEmpty: Bool{ return enqueue.isEmpty && dequeue.isEmpty }
    var count: Int{ return enqueue.count + dequeue.count }
    init(_ queue:[Int]) {
        self.enqueue = queue
    }
    func push(_ n: Int){ enqueue.append(n) }
    func pop() -> Int? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
}

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0]
let k = input[1]

var queue: Queue = Queue(Array(1...n))
var result = [String]()

while true {
    if queue.count == 0 {
        break
    }
    for _ in 0..<k - 1 {
        if let swap = queue.pop() {
            queue.push(swap)
        }
    }
    if let pop = queue.pop() {
        result.append(String(pop))
    }
}

print("<\(result.joined(separator: ", "))>")
