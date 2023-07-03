import Foundation
import Glibc

// 1. Correctness: 66%, Performance: 100%
// 시간복잡도: O(N)
public func solution(_ S : inout String) -> Int {
    var stack: [Character] = []
    let dic: [Character: Character] = ["(": ")", "{": "}", "[": "]"]

    for c in S {
        if stack.isEmpty {
            stack.append(c)
            continue
        }

        if c == "(" || c == "{" || c == "[" {
            stack.append(c)
        } else {
            let before = stack.last!
            if c == dic[before]! {
                // 여기에서 문제 발생 dic["}"]에 대한 건 없음
                // 반례: "})"
                stack.removeLast()
            } else { break }
        }
  
    }

    return stack.isEmpty ? 1 : 0
}

// 2. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N)
public func solution(_ S : inout String) -> Int {
    var stack: [Character] = []
    let dic: [Character: Character] = ["(": ")", "{": "}", "[": "]"]

    for c in S {
    
        if c == "(" || c == "{" || c == "[" {
            stack.append(c)
        } else {
            if stack.isEmpty { return 0 }
            let before = stack.last!
            
            if let n = dic[before], c == n {
                stack.removeLast()
            } else { break }
        }
  
    }

    return stack.isEmpty ? 1 : 0
}
