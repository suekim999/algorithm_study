import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N) or O(N * log(N))
public func solution(_ A : inout [Int]) -> Int {
    let totalArr: [Int] = Array(1...(A.count))
    return Set(totalArr) == Set(A) ? 1 : 0

}
