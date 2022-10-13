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


// Bubble Sort
func bubbleSort<Element: Comparable>(_ array: inout [Element]) {
    // 2개 이상의 원소에서 정렬 실행에 대한 필수 조건
    guard array.count >= 2 else {
        return
    }
    // 단일 패스는 컬렉션의 끝에 가장 큰 값을 위치(버블)
    // 모든 패스는 이전 패스에서보다 한 개 적은 값을 비교해야 하므로
    // 기본적으로 각 패스에서 배열을 하나씩 단축(전체 배열 개수 → 1)
    // 1까지인 이유는 비교를 위해 최소 2개의 원소 확보를 위함
    for end in (1..<array.count).reversed() {
        var swapped = false
        // 이 루프는 단일 패스를 수행
        // 두 값을 비교해가며 인접한 값과 스왑을 실행
        for current in 0..<end {
            if array[current] > array[current + 1] {
                array.swapAt(current, current + 1)
                swapped = true
            }
        }
        // 이 패스를 스왑한 값이 없는 경우 컬렉션은 정렬된 것이며
        // 컬렉션 정렬을 일찍 종료
        if !swapped {
            return
        }
    }
}

// Selection Sort
func selectionSort<Element: Comparable>(_ array: inout [Element]) {
    // 2개 이상의 원소에서 정렬 실행에 대한 필수 조건
    guard array.count >= 2 else {
        return
    }
    
    // 단일 패스는 컬렉션의 시작에 가장 작은 값을 위치(선택)
    // 모든 패스는 이전 패스에서보다 +1 index 값을 비교해야 하므로
    // 기본적으로 각 패스에서 배열을 하나씩 증가(첫 번째 원소[0] → 전체 배열 개수 - 1)
    for current in 0..<(array.count - 1) {
        // 기준을 하나 잡고
        var lowest = current
        
        // 나머지 원소들을 순회
        // 기준 값과 비교하여 더 낮은 값을 찾음
        for other in (current + 1)..<array.count {
            if array[lowest] > array[other] {
                lowest = other
            }
        }
        
        // 찾은 값이 기준과 동일하지 않다면 기준과 찾을 값을 스왑
        if lowest != current {
            array.swapAt(lowest, current)
        }
    }
}

// Insertion Sort
func insertionSort<Element: Comparable>(_ array: inout [Element]) {
    // 2개 이상의 원소에서 정렬 실행에 대한 필수 조건
    guard array.count >= 2 else {
        return
    }
    
    // 2번째 원소부터 시작하여 그 앞(왼쪽)의 원소들과 비교하여
    // 기준 원소가 비교하고자 하는 바로 앞 인덱스의 원소보다 작을 경우 서로 스왑
    // 큰 인덱스에서 작은 인덱스로 내려가면서 비교 진행(기준 인덱스(current) → 두 번째 원소[1])
    for current in 1..<array.count {
        for shifting in (1...current).reversed() {
            if array[shifting] < array[shifting - 1] {
                array.swapAt(shifting, shifting - 1)
            } else {
                break
            }
        }
    }
}
