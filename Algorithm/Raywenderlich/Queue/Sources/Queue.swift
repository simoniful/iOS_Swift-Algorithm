/// Copyright (c) 2019 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.


// Queue Protocol
protocol Queue {
  // Element로서 여러 타입을 제네릭하게 받을 수 있도록 Placeholder 같은 역할
  // protocol 내에서 사용하는 typealias
  // Element 비교를 위한 Equatable
  associatedtype Element: Equatable
  mutating func enqueue(_ element: Element)
  mutating func dequeue() -> Element?
  var isEmpty: Bool { get }
  var peek: Element? { get }
}

// Queue Array Struct
struct QueueArray<T: Equatable>: Queue {
  private var array: [T] = []
  var isEmpty: Bool {
    return array.isEmpty
  }
  var peek: T? {
    return array.first
  }
  
  // 값 타입의 struct에서 내부 프로퍼티를 수정하기 위한 불변성 존중
  mutating func enqueue(_ element: T) {
    array.append(element)
  }
  
  // return 결과 값을 사용하지 않아도 warning 메시지 송출 X
  @discardableResult
  mutating func dequeue() -> T? {
    return isEmpty ? nil : array.removeFirst()
  }
}

// Queue Stack
struct QueueStack<T: Equatable>: Queue {
  private var dequeueStack: [T] = []
  private var enqueueStack: [T] = []
  var isEmpty: Bool {
    return dequeueStack.isEmpty && enqueueStack.isEmpty
  }
  var peek: T? {
    return !dequeueStack.isEmpty ? dequeueStack.last : enqueueStack.first
  }
  
  mutating func enqueue(_ element: T) {
    enqueueStack.append(element)
  }
  
  @discardableResult
  mutating func dequeue() -> T? {
    if dequeueStack.isEmpty {
      dequeueStack = enqueueStack.reversed()
      enqueueStack.removeAll()
    }
    return dequeueStack.popLast()
  }
}
