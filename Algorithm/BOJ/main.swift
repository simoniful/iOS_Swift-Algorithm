import Foundation


// 5430번, AC
// 시간초과

let testCase = Int(readLine()!)!

for _ in 0..<testCase {
    let commands = Array(readLine()!).map{ String($0) }
    let arrCount = Int(readLine()!)!
    let arr = readLine()!
        .replacingOccurrences(of: "[\\[\\]]", with: "", options: .regularExpression)
        .split(separator: ",").map { Int(String($0))! }
    var head = 0, tail = arrCount - 1
    var isReversed = false
    var isError = false
    
    for command in commands {
        if command == "D" {
            if head > tail {
                isError = true
                break
            }
            if isReversed {
                tail -= 1
            } else {
                head += 1
            }
        } else {
            isReversed.toggle()
        }
    }

    if isError {
        print("error")
    } else if head > tail {
        print("[]")
    } else {
        if isReversed {
            let result = arr[head...tail].reversed().map{ String($0) }.joined(separator: ",")
            print("[\(result)]")
        } else {
            let result = arr[head...tail].map{ String($0) }.joined(separator: ",")
            print("[\(result)]")
        }
    }
}








