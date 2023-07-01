import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N*log(N))
// sorted()의 시간복잡도 -O(N*log(N))
// reduce()의 시간복잡도 - O(N)
public func solution(_ A : inout [Int]) -> Int {
    let A = A.sorted()
    let option1 = A.prefix(2).reduce(A.last!) { $0 * $1 } // 음수 값 2개 * 제일 큰 값
    let option2 = A.suffix(3).reduce(1, *) // 제일 큰 값 3개의 곱

    return option1 >= option2 ? option1 : option2
}
