import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N)
public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var set1: Set<Int> = []

    for idx in A.indices {
        set1.insert(A[idx])
        if set1.count == X {
            return idx
        }
    }

    return -1
}
