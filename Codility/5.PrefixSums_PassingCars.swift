import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 40%
// 시간복잡도: O(N ** 2)
// 시간초과 문제 - large_random, large_big_answer
public func solution(_ A : inout [Int]) -> Int {
    var east: [Int] = [] // 0
    var west: [Int] = [] // 1
    var count: Int = 0

    guard Set(A).count != 1 else { return 0 }

    for (idx, num) in A.enumerated() {
        switch num {
            case 1: west.append(idx)
            default: east.append(idx)
        }
    }

    for i in east {
        for j in west {
            if i < j {
                count += 1
            }

            if count > 1000000000 {
                return -1
            }
        }

    }
    
    return count
}
