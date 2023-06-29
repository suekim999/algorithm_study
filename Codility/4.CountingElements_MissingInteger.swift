import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 25%
// 시간복잡도: O(N**2)
// contains()의 시간복잡도: O(N)
public func solution(_ A : inout [Int]) -> Int {
    let big = A.max()!

    if big <= 0 { return 1 }

    for num in 1...big {
        if !A.contains(num) {
            return num
        }
    }
    
    return big + 1
}
