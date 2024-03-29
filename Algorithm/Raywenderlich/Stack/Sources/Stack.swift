import Foundation
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


struct Stack<Element: Equatable>: Equatable {
    private var storage: [Element] = []
    
    init() { }
    
    init(_ elements: [Element]) {
        self.storage = elements
    }

    var isEmpty: Bool {
        return peak() == nil
    }
    
    func peak() -> Element? {
        return storage.last
    }
    
    // 값 타입(struct)의 프로퍼티를 수정하기 위한 mutating
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    // return 결과를 쓰든 안쓰든 신경 X
    @discardableResult
    mutating func pop() -> Element? {
        return storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return storage
            .map { "\($0)" }
            .joined(separator: " ")
    }
}

// Stack을 ArrayLiteral로 구성가능하도록
extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
