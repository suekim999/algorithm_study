import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N)
public func solution(_ S : inout String) -> Int {
    var stack: [Character] = []

    for c in S {
        if stack.isEmpty {
            stack.append(c)
            continue
        }

        if c == "(" {
            stack.append(c)
        } else {
            stack.removeLast()
        }
    }

    return stack.isEmpty ? 1 : 0
}

// 다른 사람의 풀이 코드를 참고해서 Swift로 작성
// stack의 개념은 알았으나 그걸 어떻게 문제에 녹여내야하는지 감을 못 잡았었음
// nesting 즉, (가 있으면 )는 무조건 있어야 하는 구조다
// ( 가 들어오고 )가 들어왔을 때 pop을 해주면 nesting이 되어있음을 알 수 있음
// 아직 stack을 언제 써야 적절한지 완전히 이해하진 못했지만 일단 70% 이해 완료.
