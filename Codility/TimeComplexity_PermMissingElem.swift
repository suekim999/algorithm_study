import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N) or O(N * log(N))
public func solution(_ A : inout [Int]) -> Int {
    let totalArr: [Int] = Array(1...(A.count + 1))
    let set1 = Set(totalArr).subtracting(Set(A))

    return set1.first!
}
